# Crime Record Management System (CRMS)

A *static, printable project output* generated from database design and sample data for a *Crime Record Management System*.
This single HTML file demonstrates a complete relational schema with joined data views and is suitable for submission, viva, or quick demonstrations.

---

## 📖 Overview

- *Type:* SQL Database → Static HTML Frontend (No JS)
- *Purpose:* To showcase a crime record system with users, officers, cases, crimes, and court details.
- *Features:*
  - Database entities rendered as formatted tables.
  - Color-coded case status pills (open, closed, under investigation, pending, dismissed).
  - Joined view for relational understanding (Crimes × Locations).
  - Fully printable (Ctrl+P → Save as PDF).
  - No JavaScript, safe & easy for review.

---

## 📊 Dataset Snapshot

- *Tables Included:* users, officers, crime_locations, crimes, witnesses, suspects, victims, case_reports, case_status, court_cases.
- *Row Count:* *10 rows per table* (sample data).
- *Time Range:* 2025-07-01 → 2025-08-30.

### Entity Breakdown
- *Users:* Admins, officers, guests.
- *Officers:* Rank, badge, phone contacts.
- *Crimes:* Types (robbery, assault, fraud, etc.) with statuses.
- *Locations:* Key Dhaka regions (Gulshan, Dhanmondi, Mirpur, etc.).
- *Witnesses / Victims / Suspects:* Contact, demographic, and statement data.
- *Case Reports:* Investigation logs per officer.
- *Case Status:* Timeline updates.
- *Court Cases:* Case number, court, judge, status, hearing date.

---

## 🚦 Status Examples

| Status | Color |
|--------|-------|
| Open | 🟠 |
| Closed | ✅ |
| Under Investigation | 🔵 |
| Pending | 🟡 |
| Dismissed | 🔴 |

---

## 🗂 Relation View

A convenience joined table shows *Crimes × Locations* with status and reported date.
This helps examiners quickly understand *foreign key mappings*.

---

## 🛠 Tech & Usage

- *Backend:* MySQL / phpMyAdmin dump (basis of dataset).
- *Frontend:* Pure HTML + CSS (no JS).
- *Styling:* Dark UI theme, gradient header, pills for status.
- *Export:* Use *Print → Save as PDF* for easy submission.
- *Hosting:* Upload index.html to GitHub Pages for live demo.

---

## 📄 Submission Notes

- All data is directly reproduced from SQL dump (IDs, strings, timestamps).
- Status pills map 1:1 with ENUM values in database.
- Works offline as a *single file project output*.
- No external dependencies.

---

## 📂 Repository Structure



📦 crime-record-management-system
┣ 📜 index.html   # Static output (generated)
┗ 📜 README.md    # Documentation (this file)



---

## 📜 License

This project is for *educational/demo purposes*.
Not intended for real law enforcement use.
