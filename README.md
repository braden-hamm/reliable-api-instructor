# Reliable API — Instructor Pack v5 🎓

> 
> This toolkit equips instructors, mentors, and reviewers to deliver the *Reliable API* learning experience with confidence and consistency.

It includes grading rubrics, verification scripts, and publishing tools that simplify setup, assessment, and automation for the Play Mode and Build Mode environments.

---

## 📦 Contents

| File | Description |
|------|--------------|
| **Publish_Tutor.ps1** | Automates build validation and GitHub/Docker publication on Windows. |
| **publish_tutor.sh** | Linux/Mac equivalent of the publish workflow. |
| **verify_student_submission.py** | Performs health checks, idempotency validation, and report generation. |
| **security_sweep.py** | Scans for API keys, secrets, or unsafe dependencies. |
| **RUBRIC.txt** | Scoring criteria and guidance for grading. |
| **ANSWER_KEY.txt** | Reference output examples for Build Mode exercises. |
| **CLASS_FLOW.txt** | Suggested week-by-week teaching sequence. |
| **README_INSTRUCTOR.txt** | Quick reference setup notes for faculty. |
| **SECURITY_BASELINE.txt** | Minimum accepted security posture for student projects. |

---

## 🧭 Setup Instructions

### 1️⃣ Clone the private repository
```bash
git clone https://github.com/braden-hamm/reliable-api-instructor.git
cd reliable-api-instructor
```

### 2️⃣ Configure and test the environment

#### Windows
```powershell
.\Publish_Tutor.ps1
```

#### Linux / Mac
```bash
bash publish_tutor.sh
```

### 3️⃣ Validate learner submissions
```bash
python verify_student_submission.py --input path/to/student_project.zip
```

Reports summarize reliability metrics, error responses, and container health.

---

## 🧑‍🏫 Recommended Teaching Flow

1. **Week 1–2:** Introduce Play Mode and key reliability principles.  
2. **Week 3–4:** Transition learners to Build Mode for deeper architecture work.  
3. **Week 5+:** Grade and discuss final projects using `RUBRIC.txt`.  

Encourage reflection, peer review, and API testing in real containers.

---

## 🔐 Access Policy

This material is restricted to authorized instructors and collaborators.  
Distribution of grading keys or automation scripts outside approved circles is prohibited.

For partnership or collaboration requests, contact  
📧 **braden.hamm@hotmail.com**

---

## 🏷 Keywords
`#InstructorPack` · `#ReliableAPI` · `#TeachingToolkit` · `#DevEducation` · `#FastAPI`

---

## ⚖️ License
MIT License © 2025 Braden Hamm  
See [`LICENSE.md`](./LICENSE.md) for details.
