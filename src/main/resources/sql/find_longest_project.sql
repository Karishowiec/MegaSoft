With project_durations as (
SELECT id, DATEDIFF(MONTH, START_DATE, FINISH_DATE) AS duration_months
from project
)
SELECT project.*
From project
JOIN project_durations On project.Id = project_durations.ID
Where project_durations.duration_months = (
SELECT MAX(duration_months)
From project_durations
);