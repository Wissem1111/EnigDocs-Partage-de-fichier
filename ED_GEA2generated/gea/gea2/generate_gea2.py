import os

# Set the root directory for the documents
root_dir = "./assets/docs/GEA2"

# HTML Template for generating the GEA2 HTML file
html_template = """
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="../../assets/images/enig_docs.ico" type="image/x-icon">
    <title>ENIGDOCS - Partage de fichiers ENIG</title>

    <!-- Bootstrap core CSS -->
    <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="../../assets/css/fontawesome.css">
    <link rel="stylesheet" href="../../assets/css/template_Enigdogs.css">
    <link rel="stylesheet" href="../../assets/css/owl.css">
    <link rel="stylesheet" href="../../assets/css/animate.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
</head>

<body>

    <!-- ***** Preloader Start ***** -->
    <div id="js-preloader" class="js-preloader">
        <div class="preloader-inner">
            <span class="dot"></span>
            <div class="dots">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </div>
    <!-- ***** Preloader End ***** -->

    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="index.html" class="logo">
                            <h1>ENIGDOCS</h1>
                        </a>
                        <!-- ***** Logo End ***** -->
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <div class="main-banners" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="owl-carousel owl-banner">
                        <section class="section subjects" id="subjects">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 text-center">
                                        <div class="section-heading"> 
                                            <h6>Matières</h6>
                                            <h2>GEA2</h2>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 semester-container">
                                        {semester_sections}
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <footer>
        <div class="container">
            <div class="col-lg-12">
                <p>Copyright © 2024 ENIGDOCS. All rights reserved. </p>
            </div>
        </div>
    </footer>

    <!-- Scripts -->
    <script src="../../vendor/jquery/jquery.min.js"></script>
    <script src="../../vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../../assets/js/isotope.min.js"></script>
    <script src="../../assets/js/owl-carousel.js"></script>
    <script src="../../assets/js/counter.js"></script>
    <script src="../../assets/js/custom.js"></script>

</body>
</html>
"""

def generate_semester_section(semester, subjects):
    """
    Generate the HTML section for a specific semester with a list of subjects.
    """
    subject_list_items = "\n".join([f'<li><a class="subject-link" href="{subject}.html">{subject}</a></li>' for subject in subjects])
    section_html = f"""
    <div class="semester-section">
        <ul class="Semester-list"><li><a class="semester-heading">{semester}</a></li></ul>
        <ul class="subject-list">
            {subject_list_items}
        </ul>
    </div>
    """
    return section_html

def create_gea2_html(output_dir, semesters):
    # Create the output directory if it does not exist
    os.makedirs(output_dir, exist_ok=True)
    
    # Generate the sections for each semester
    semester_sections = "\n".join([generate_semester_section(semester, subjects) for semester, subjects in semesters.items()])
    
    # Fill the template
    html_content = html_template.format(semester_sections=semester_sections)
    
    # Write the HTML content to a file
    filepath = os.path.join(output_dir, "gea2.html")
    with open(filepath, "w", encoding="utf-8") as f:
        f.write(html_content)
    print(f"Created: {filepath}")

# Define the semesters and their subjects
semesters = {
    "Semestre 1": [
        "Programmation avancée (Python,…)",
        "Recherche operationnelle et optimisation",
        "Programmation orienté objet 2",
        "Machines à courant alternatif",
        "Convertisseurs à sortie alternative",
        "Electronique de commutation",
        "Systèmes à micro-processeurs",
        "Acquisition et transmission de données",
        "Système d'exploitation pour l'embarqué",
        "Commande de systèmes échantillonnés",
        "Modélisation de robots",
        "Filtrage optimal",
        "Anglais 2",
        "Gestion de la qualité",
        "Sécurité industrielle"
    ],
    "Semestre 2": [
        "Automates programmables industriels",
        "Architecture des Ordinateurs",
        "Programmation (Labview,…)",
        "Gestion Finance d'Entreprise",
        "Energies renouvelables et convertisseurs associés",
        "Commande optimale",
        "Analyse et identification de procédés",
        "Systèmes non linéaires",
        "Intelligence articficielle",
        "Traitement d'images et vision industrielle",
        "Architecture et programmation des systèmes embarqués",
        "Création d’entreprise et entreprenariat",
        "Techniques de communication"
    ]
}

# Define the output directory for GEA2 HTML files
gea_output_dir = "./gea"

# Create the gea2.html file
create_gea2_html(gea_output_dir, semesters)
