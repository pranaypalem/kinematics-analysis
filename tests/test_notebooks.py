"""
Test to verify notebooks can be executed without errors
"""
import pytest
import subprocess
import os
from pathlib import Path


def test_notebook_execution():
    """Test that notebooks can be executed without errors"""
    notebook_dir = Path(__file__).parent.parent / "notebooks"
    notebooks = list(notebook_dir.glob("*.ipynb"))
    
    assert len(notebooks) > 0, "No notebooks found to test"
    
    for notebook in notebooks:
        try:
            # Test notebook execution using nbconvert
            cmd = [
                "jupyter", "nbconvert", 
                "--execute", 
                "--to", "notebook",
                "--stdout",
                str(notebook)
            ]
            result = subprocess.run(cmd, capture_output=True, text=True, timeout=300)
            
            if result.returncode != 0:
                pytest.fail(f"Notebook {notebook.name} failed to execute: {result.stderr}")
                
        except subprocess.TimeoutExpired:
            pytest.fail(f"Notebook {notebook.name} execution timed out")
        except Exception as e:
            pytest.fail(f"Error executing notebook {notebook.name}: {str(e)}")


def test_requirements_file_exists():
    """Test that requirements.txt exists"""
    req_file = Path(__file__).parent.parent / "requirements.txt"
    assert req_file.exists(), "requirements.txt file not found"


def test_makefile_exists():
    """Test that Makefile exists"""
    makefile = Path(__file__).parent.parent / "Makefile"
    assert makefile.exists(), "Makefile not found"