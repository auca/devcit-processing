/*
  Государство США определяет рост населения исходя из следующих стат-наблюдений.
  
    * Каждые 7 секунд в стране рождается 1 человек.
    * Каждые 13 секунд в стране умирает 1 человек.
    * Каждые 45 секунд в страну въезжает новый иммигрант.
*/
size(1980, 720);

final int SECONDS_IN_YEAR = 365 * 24 * 60 * 60; // Количество дней для расчета установлено в 365 дней
final int CURRENT_POPULATION = 312_032_486; // Нынешнее население

/*
  TODO:

    Вычислите и визуализируйте при помощи закрашенных окружностей, установленных в ряд в центре экрана,
    рост населения, если предположить, что темп роста не изменится...
    
      * через 1 год
      * через 10 лет
      * через 100 лет
      * через 1000 лет
*/

// int populationInOneYear = ...
// ...
// ellipse(...

long growsPerYear = round(SECONDS_IN_YEAR / 7.0 - SECONDS_IN_YEAR / 13.0 + SECONDS_IN_YEAR / 45.0);

long populationInOneYear       = CURRENT_POPULATION + growsPerYear;
long populationInTenYears      = CURRENT_POPULATION + 10 * growsPerYear;
long populationInHundredYears  = CURRENT_POPULATION + 100 * growsPerYear;
long populationInThousandYears = CURRENT_POPULATION + 1000 * growsPerYear;

final float SCALE_FACTOR = 5000000.0;

int centerX = width / 2;
int centerY = height / 2;

float populationInOneYearScaled       = populationInOneYear / SCALE_FACTOR;
float populationInTenYearsScaled      = populationInTenYears / SCALE_FACTOR;
float populationInHundredYearsScaled  = populationInHundredYears / SCALE_FACTOR;
float populationInThousandYearsScaled = populationInThousandYears / SCALE_FACTOR;

background(0);
noStroke();
textAlign(CENTER, CENTER);

fill(0, 0, 255);
ellipse(centerX - 400, centerY, populationInOneYearScaled, populationInOneYearScaled);
fill(255);
textSize(populationInOneYearScaled / 2);
text("1", centerX - 400, centerY);

fill(0, 0, 255);
ellipse(centerX - 200, centerY, populationInTenYearsScaled, populationInTenYearsScaled);
fill(255);
textSize(populationInHundredYearsScaled / 2);
text("10", centerX - 200, centerY);

fill(0, 0, 255);
ellipse(centerX, centerY, populationInHundredYearsScaled, populationInHundredYearsScaled);
fill(255);
textSize(populationInHundredYearsScaled / 2);
text("100", centerX, centerY);

fill(0, 0, 255);
ellipse(centerX + 500, centerY, populationInThousandYearsScaled, populationInThousandYearsScaled);
fill(255);
textSize(populationInThousandYearsScaled / 2);
text("1000", centerX + 500, centerY);
