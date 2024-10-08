1. User Registration and Login
1.1 User Registration

Test Case:

    Action: Navigate to /users/new to access the registration form.
    Steps:
        Open the registration page by visiting /users/new.
        Fill out the form with valid user details (name, email, password).
        Submit the form.
    Expected Result: After form submission, the user should see a success message and be redirected to the Projects Index (/projects). Ensure the user is created and logged in automatically.

1.2 User Login

Test Case:

    Action: Navigate to /login to access the login page.
    Steps:
        Visit /login.
        Enter the correct email and password.
        Submit the form.
    Expected Result: The user should be redirected to the Projects Index. Ensure the user session is created, and the user remains logged in.

1.3 User Logout

Test Case:

    Action: Navigate to /logout to log out the user.
    Steps:
        After logging in, visit /logout or use the Logout button/link in the navigation bar.
        Confirm the logout action (if applicable).
    Expected Result: The user should be logged out, and any protected routes should no longer be accessible until the user logs back in.

2. Project Management
2.1 Create a New Project

Test Case:

    Action: Navigate to /projects/new to create a new project.
    Steps:
        Visit /projects/new.
        Fill out the project creation form (title, description, etc.).
        Submit the form.
    Expected Result: The user should be redirected to the project list (/projects), and the newly created project should appear in the list.

2.2 View All Projects

Test Case:

    Action: Visit /projects to view a list of all projects.
    Steps:
        Navigate to /projects.
        Confirm that the list of projects is displayed.
    Expected Result: The newly created project and all existing projects should be visible on the page.

2.3 Edit a Project

Test Case:

    Action: Navigate to /projects/:id/edit to modify an existing project.
    Steps:
        Visit /projects/:id/edit (replace :id with the correct project ID).
        Modify the project details (title, description).
        Submit the form.
    Expected Result: The changes should be saved, and the user should be redirected to the project page or project list with the updated details.

2.4 Delete a Project

Test Case:

    Action: Delete a project from the project details page.
    Steps:
        Navigate to a project’s details page (/projects/:id).
        Look for the Delete button or link and click it.
        Confirm the deletion (if a confirmation prompt appears).
    Expected Result: The project should be removed from the list of projects, and it should no longer appear on the /projects page.

3. Commenting on Projects
3.1 Add a Comment

Test Case:

    Action: Add a comment to a project.
    Steps:
        Navigate to a project’s details page (/projects/:id).
        Find the comment form, enter a comment in the text box.
        Submit the comment form.
    Expected Result: The comment should appear below the project details, along with the name of the user who posted it.

3.2 Check Comments Persistence

Test Case:

    Action: Verify comment persistence after a page reload.
    Steps:
        Add a comment as in 3.1.
        Reload the project’s details page.
    Expected Result: The comment should still appear on the page after reloading.

4. Changing Project Status
4.1 Change Status

Test Case:

    Action: Change the status of a project.
    Steps:
        Navigate to a project’s details page (/projects/:id).
        Locate the Status Change dropdown or form.
        Select a new status from the options.
        Submit the form.
    Expected Result: The project status should update accordingly and reflect in the project details. 
