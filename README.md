# Volunteer-Manager-Software
A software designed to manager volunteers and display analytical information for volunteer managers.

## Finalised Design
After three rounds of prototyping, a final design was approved by Steph, Krupa and Becky. 
This final design can be found on Figma [here](https://www.figma.com/design/4mGzxtmjIiOSucpNB1xUYZ/Rep-Manager?node-id=0-1&t=g4fyvHUYW3L0uUTH-0).

### Home Page
The image below shows the view of the main home page. This will be the first page that loads after opening the app. 
The intention for this page is to fill it with analytical information for us all to use. This can include figures on the number of reps elected, the number of courses represented, the number of reps who have completed training, etc.
The large grey box in the middle has been left available for a chart to fill its place, again providing analytical information.

The search bar at the tops allows you to search for a specific rep immidiately after opening the app.

![A view of how the home page could look](https://github.com/IainSimpsonCode/Volunteer-Manager-Software/assets/147500777/c442387d-7a14-4b83-8f50-4d185d1b5af3)

### Rep Page
The rep page provides a full data view of all reps within the system. This information can be viewed in full, or it can be filtered by custom groups to find specific reps or groups of reps.
This page also allows you to manipulate the data stored within the system with the ability to add and remove reps, edit reps and group reps.

Again, search bar at the tops allows you to search for a specific rep immidiately.

![A view of how the rep page could look](https://github.com/IainSimpsonCode/Volunteer-Manager-Software/assets/147500777/d8442ac4-f78e-471d-a399-d25701b7fc83)

#### Focused View
When on the rep page, clicking on a specific rep will open a new section with more detail pertaining to that specific rep.
This view will show all data on one rep, including thier student number, mode of study, any roles they have, and more.

![image](https://github.com/IainSimpsonCode/Volunteer-Manager-Software/assets/147500777/84478d34-f3c4-4e6f-9164-0d96b0f8ea87)

### Design and Theming
For the primary/accent colour, I have used the SU orange.
![image](https://github.com/IainSimpsonCode/Volunteer-Manager-Software/assets/147500777/7826bb13-6dc6-444d-81c6-0f1f12b6ffb8)

For the secondary colour, I have used a light gray.
![image](https://github.com/IainSimpsonCode/Volunteer-Manager-Software/assets/147500777/c98288d1-c774-434f-85a5-955180583415)

For the body I have used plain white, and for the text I have used plain black.

#### Text and Fonts
Inline with the SU branding, I have used Poppins for the font.

For the H1 font style, I have used poppins semi-bold (weight 600), size 36.<br />
For the H2 font style, I have used poppins semi-bold (weight 600), size 20.<br />
For the H3 font style, I have used poppins medium (weight 500), size 20.<br />
For the paragraph font style, I have used poppins regular (weight 400), size 16.<br />


## First Draft
Below is a first draft flowchart of how the software could run
```mermaid
flowchart TD
    A[New Course Rep is elected] --> B[School collects key information];
    B --> C[Rep info sent to coursereps email];
    C --> D[New Rep is added to the Volunteer Manager];
    E[Existing Reps are added to the Volunteer Manager] --> F[Volunteer Manager];
    D --> F;
    F --> G[Add Course Rep to Teams];
    G --> H[Mark as done];
    G --> I[Notify School President];
    I --> J[Mark as done];
    I --> K[Add Course Rep to Unitu]
    K --> L[Mark as done];
    K --> M[Send Course Rep training];
    M --> N[Mark as done];
    M --> F;
```
