import os

# Set the root directory for the documents
root_dir = "./assets/docs/GEA2"

# HTML Template for generating the HTML files
html_template = """
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="../../../assets/images/enig_docs.ico" type="image/x-icon">
    <title>ENIGDOCS - {title}</title>
    <!-- Bootstrap core CSS -->
    <link href="../../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="../../../assets/css/fontawesome.css">
    <link rel="stylesheet" href="../../../assets/css/template_Enigdogs.css">
    <link rel="stylesheet" href="../../../assets/css/owl.css">
    <link rel="stylesheet" href="../../../assets/css/animate.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
</head>
<body>
  <!-- Body content here -->
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
                      <h6>Matiéres</h6>
                      <h2>{semester} - GEA 2</h2>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-lg-12 col-md-12 semester-container">
                    <div class="semester-section">
                      <ul class="Semester-list"><li><a class="semester-heading">{title}</a></li></ul>
                      <ul class="files-list">
                        {files_list}
                      </ul>
                    </div>
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
  <!-- Bootstrap core JavaScript -->
  <script src="../../../vendor/jquery/jquery.min.js"></script>
  <script src="../../../vendor/bootstrap/js/bootstrap.min.js"></script>
  <script src="../../../assets/js/isotope.min.js"></script>
  <script src="../../../assets/js/owl-carousel.js"></script>
  <script src="../../../assets/js/counter.js"></script>
  <script src="../../../assets/js/custom.js"></script>
</body>
</html>
"""

def create_html_page(title, semester, files, output_dir):
    # Create the list of files in HTML format
    files_list = "\n".join([f'<li><a href="{file}" download="{os.path.basename(file)}">{os.path.basename(file)}</a></li>' for file in files])
    
    # Fill the template
    html_content = html_template.format(title=title, semester=semester, files_list=files_list)
    
    # Ensure the output directory exists
    os.makedirs(output_dir, exist_ok=True)
    
    # Write the HTML content to a file
    filename = f"{title.replace(' ', '_')}_gea1.html"
    filepath = os.path.join(output_dir, filename)
    with open(filepath, "w", encoding="utf-8") as f:
        f.write(html_content)
    print(f"Created: {filepath}")

def generate_relative_path(file_path, html_file_dir):
    """
    Generate a relative path from the HTML file directory to the file path.
    """
    # Calculate the relative path from the HTML file directory to the file
    relative_path = os.path.relpath(file_path, start=html_file_dir)
    # Replace backslashes with forward slashes for web URLs
    return relative_path.replace("\\", "/")

# Directory structure for the output HTML files
gea_output_dir = "./gea/gea2"

# Traverse the root directory and create an HTML page for each subject directory
for semester in os.listdir(root_dir):
    semester_path = os.path.join(root_dir, semester)
    if os.path.isdir(semester_path):
        # Define the output directory for each semester
        semester_output_dir = os.path.join(gea_output_dir, semester)
        for subject in os.listdir(semester_path):
            subject_path = os.path.join(semester_path, subject)
            if os.path.isdir(subject_path):
                files = []
                for file in os.listdir(subject_path):
                    file_path = os.path.join(subject_path, file)
                    if os.path.isfile(file_path):
                        # Calculate the relative path from the HTML file directory to the file
                        html_file_dir = os.path.join(os.getcwd(), semester_output_dir)
                        relative_path = generate_relative_path(file_path, html_file_dir)
                        files.append(relative_path)
                # Create the HTML page in the appropriate directory
                create_html_page(subject, semester, files, semester_output_dir)
