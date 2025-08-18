# Kinematics Analysis

[![CI](https://github.com/pranaypalem/kinematics-analysis/actions/workflows/ci.yml/badge.svg)](https://github.com/pranaypalem/kinematics-analysis/actions/workflows/ci.yml)

This repository contains a comprehensive set of Jupyter notebooks focused on kinematics analysis, providing insights into various mechanical and robotic systems. Each notebook highlights specific concepts and computational techniques with automated testing and deployment.

## 📁 Project Structure

```
kinematics-analysis/
├── notebooks/                 # Jupyter notebooks
│   ├── Foldable-Kinematics.ipynb
│   ├── Fourbar_Kinematics.ipynb
│   └── Robot-Kinematics.ipynb
├── src/                      # Source code utilities
├── tests/                    # Test suite
├── assets/                   # Generated animations and assets
├── docs/                     # Documentation
├── .github/workflows/        # GitHub Actions CI/CD
├── requirements.txt          # Python dependencies
├── Makefile                  # Build automation
└── README.md
```

## 📚 Notebooks Overview

### [Foldable Kinematics](notebooks/Foldable-Kinematics.ipynb)
- **Enhanced with Animation**: Now includes automated GIF generation showing robot movement
- **Google Colab Compatible**: Can be run directly in Google Colab
- Focuses on foldable mechanisms and their kinematic behavior
- Provides solutions to assignment-based problems on foldable linkages
- Includes step-by-step breakdown of kinematic equations
- Demonstrates analysis and modeling of folding mechanisms through practical examples
- Incorporates quaternions to represent and compute rotations efficiently

### [Fourbar Kinematics](notebooks/Fourbar_Kinematics.ipynb)
- Explores the kinematics of a four-bar linkage system
- Discusses the derivation of the Jacobian matrix
- Analyzes the relationship between joint torques and external forces using τ = J^T F
- Features detailed computations and visualizations

### [Robot Kinematics](notebooks/Robot-Kinematics.ipynb)
- Delves into the kinematics of robotic systems
- Covers forward and inverse kinematics for robotic arms
- Examines transformations, joint space, and workspace analysis
- Utilizes practical examples to illustrate robotic motion and control strategies
- Employs quaternions for rotation representation, avoiding gimbal lock

## 🚀 Quick Start

### Prerequisites
- Python 3.8 or higher
- pip package manager

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/pranaypalem/kinematics-analysis.git
   cd kinematics-analysis
   ```

2. **Install dependencies**
   ```bash
   make install
   # or manually: pip install -r requirements.txt
   ```

3. **Run notebooks**
   ```bash
   jupyter lab notebooks/
   ```

## 🛠️ Development

### Available Make Commands

```bash
make help          # Show available targets
make install       # Install dependencies
make test          # Run tests
make lint          # Run code linting
make format        # Format code
make notebooks     # Execute all notebooks
make animations    # Generate animation GIFs
make clean         # Clean temporary files
make build         # Run complete build pipeline
make all           # Run everything
```

### Building and Testing

```bash
# Run the complete build pipeline
make build

# Or run individual steps
make install
make test
make notebooks
make animations
```

## 🎬 Animation Features

The Foldable Kinematics notebook now includes:
- **Automated GIF Generation**: Creates smooth animations of robot movement
- **Configurable Parameters**: Adjust animation speed, range, and quality
- **Google Colab Support**: Works seamlessly in cloud environments
- **Asset Management**: Generated animations are saved to `assets/` directory

## 🧪 Testing

The project includes comprehensive testing:

```bash
# Run all tests
make test

# Tests include:
# - Notebook execution verification
# - Code quality checks
# - Dependency verification
```

## 🚀 Continuous Integration

This project uses GitHub Actions for automated testing and deployment:

- **Multi-Python Testing**: Tests on Python 3.8, 3.9, 3.10, 3.11
- **Automated Builds**: Every push and pull request triggers CI
- **Notebook Execution**: Verifies all notebooks run without errors
- **Animation Generation**: Automatically creates and uploads animations
- **Artifact Storage**: Generated assets are preserved for 30 days

### CI Badge Status
The CI badge at the top shows the current build status. Green means all tests pass!

## 📦 Deployment

### Local Development
```bash
# Setup development environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
make install
```

### Google Colab
All notebooks are Google Colab compatible. Simply:
1. Upload the notebook to Colab
2. Run the first cell to install dependencies
3. Execute normally

### GitHub Actions
Deployment happens automatically:
- Push to `main` or `develop` branches triggers CI
- Pull requests are automatically tested
- Successful builds generate and store animations

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run `make build` to ensure everything works
5. Submit a pull request

## 📄 License

This project is open source and available under the MIT License.

## 👨‍💻 Author

**Pranay Palem**
- GitHub: [@pranaypalem](https://github.com/pranaypalem)
- Academic work showcasing kinematics analysis research

---

*Explore the fascinating world of kinematics with automated testing and beautiful animations!* 🤖✨