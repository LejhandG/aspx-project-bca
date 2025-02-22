# CloudDrop ☁️  
**A Simple File Hosting Platform**  

This project is a file hosting platform where users can upload files, store them locally, and retrieve them later by searching for the file name. The frontend is fully implemented, and the backend needs to be completed for file handling and user authentication.

---

## 📌 **Current Status**  
Here’s what has been done so far:  

### **Frontend (Completed)**  
1. **Pages Created:**  
   - `Home.aspx`: Landing page with a description and upload button.  
   - `Upload.aspx`: Page for uploading files (UI ready).  
   - `Fetch.aspx`: Page for searching and retrieving files (UI ready).  
   - `RegisterLogin.aspx`: Page for user registration and login (UI ready).  
   - `About.aspx`: Page with team information and project details.  
   - `ContactUs.aspx`: Page with a contact form (UI ready).  

2. **Styling:**  
   - Used **Tailwind CSS** for a modern, responsive design.  
   - Consistent styling across all pages (navbar, footer, buttons, forms).  

3. **Navigation:**  
   - Added all pages to the navbar and footer for easy access.  

---

## 🖥️ **How It Works (So Far)**  

### **File Upload Flow**  
1. User visits `Upload.aspx`.  
2. User selects a file using the file input or drag-and-drop area.  
3. The file is sent to the server (backend not implemented yet).  
4. The file should be saved in the `Uploads/` folder locally.  

### **File Fetch Flow**  
1. User visits `Fetch.aspx`.  
2. User enters the file name (full or partial) in the search box.  
3. The backend searches for the file in the `Uploads/` folder.  
4. If found, the backend returns the file's local storage path as a downloadable link.  

### **User Authentication Flow**  
1. User visits `RegisterLogin.aspx`.  
2. User can toggle between **Sign Up** and **Sign In** modes.  
3. User enters credentials (email, password, etc.).  
4. Backend validates credentials and manages sessions (not implemented yet).  

---

## 🛠️ **What Needs to Be Done (Backend)**  

### **1. File Handling Backend**  
- **Upload Functionality:**  
  - Save uploaded files to the `Uploads/` folder.  
  - Validate file types and size (e.g., allow only `.pdf`, `.jpg`, etc.).  
  - Generate a unique name for each file to avoid conflicts.  

- **Fetch Functionality:**  
  - Search for files in the `Uploads/` folder based on the user's input.  
  - Return the file path as a downloadable link if found.  
  - Handle cases where the file is not found.  

### **2. User Authentication Backend**  
- **Registration:**  
  - Create a user table in the database (e.g., SQL Server).  
  - Store user details (email, password hash, etc.).  
  - Validate input fields (e.g., password strength, unique email).  

- **Login:**  
  - Authenticate users by checking credentials against the database.  
  - Manage user sessions (e.g., using cookies or tokens).

---

## 🚀 **Next Steps**  

1. **Set Up Database:**  
   - Create a database (e.g., SQL Server) for user authentication.  
   - Add a table for users with fields like `Id`, `Email`, `PasswordHash`, etc.  

2. **Implement File Handling:**  
   - Complete the backend for `Upload.aspx` and `Fetch.aspx`.  
   - Add validation for file types and sizes.  

3. **Implement User Authentication:**  
   - Complete the backend for `RegisterLogin.aspx`.  
   - Add session management for logged-in users.  

4. **Testing:**  
   - Test file uploads and retrieval.  
   - Test user registration and login.  

---

## 📝 **Notes for Implementation**  

- **File Storage:**  
  - All uploaded files are stored in the `Uploads/` folder.  
  - Ensure the folder has proper permissions for read/write access.  

- **Security:**  
  - Never store plain-text passwords. Always hash them.  
  - Sanitize file names to prevent directory traversal attacks.  

- **Error Handling:**  
  - Add proper error handling for file operations and database queries.  

---

Let me know if you need further clarification or help with specific parts of the backend!  

--- 
