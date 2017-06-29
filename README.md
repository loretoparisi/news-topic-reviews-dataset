# news-topic-reviews-dataset
Machine Learning Dataset for Topic and News Text Classification

## How to download the dataset
These datasets are hosted by Facebook as a Google Drive folder. Please use the `download.sh` script to grab the dataset:

```
git clone https://github.com/loretoparisi/news-topic-reviews-dataset.git
cd news-topic-reviews-dataset.git
./download.sh
```

## How to extract train and test files
You can then untar each dataset to get the `train` and `test` files:

```
tar xvzf yelp_review_full_csv.tar.gz
x yelp_review_full_csv/
x yelp_review_full_csv/readme.txt
x yelp_review_full_csv/train.csv
x yelp_review_full_csv/test.csv
```

## How to verify the train and test files
Each dataset comes with a `classes` file, a `train` and a `test` file:

```
cd dbpedia_csv
ls -l
total 382688
-rw-------  1 loretoparisi  staff        146 28 Mar  2015 classes.txt
-rw-r--r--  1 loretoparisi  staff       1758 30 Mar  2015 readme.txt
-rw-------  1 loretoparisi  staff   21775285 28 Mar  2015 test.csv
-rw-------  1 loretoparisi  staff  174148970 28 Mar  2015 train.csv
```

Then `train` and a `test` file contain the training set and the test set files

```
head -n1 train.csv 
1,"E. D. Abbott Ltd"," Abbott of Farnham E D Abbott Limited was a British coachbuilding business based in Farnham Surrey trading under that name from 1929. A major part of their output was under sub-contract to motor vehicle manufacturers. Their business closed in 1972."

head -n 1 test.csv 
1,"TY KU"," TY KU /taɪkuː/ is an American alcoholic beverage company that specializes in sake and other spirits. The privately-held company was founded in 2004 and is headquartered in New York City New York. While based in New York TY KU's beverages are made in Japan through a joint venture with two sake breweries. Since 2011 TY KU's growth has extended its products into all 50 states."
```

## How to verify the classes
The  `classes` files contains the classes for the dataset:

```
cd dbpedia_csv
cat classes.txt 
Company
EducationalInstitution
Artist
Athlete
OfficeHolder
MeanOfTransportation
Building
NaturalPlace
Village
Animal
Plant
Album
Film
WrittenWork
```

To count each class occurences use the `count_classes.sh` script that has the following parameters

```
./count_classes.sh COLUMN FILE "SEPARATOR"
```

Note that the separator is between double quotes like `"\t"` or like `","` so that you do


```
./count_classes.sh 1 dbpedia_csv/train.csv ","
2,40000
3,40000
4,40000
5,40000
6,40000
7,40000
8,40000
9,40000
10,40000
11,40000
12,40000
13,40000
14,40000
1,40000
$ ./count_classes.sh 1 sogou_news_csv/train.csv ","
"5",90000
"2",90000
"4",90000
"1",90000
"3",90000
```

## How to use the datasets for training and testing
The train and test files must be normalized before used. Use the `normalize.sh` script to pre-process the files before training:

```
cd dbpedia_csv
./normalize.sh train.csv dbpedia.train
./normalize.sh test.csv dbpedia.test
```

To shuffle the dataset you can use the `shuffle.sh` script:

```
cd dbpedia_csv
./shuffle.sh train.csv dbpedia.train
./shuffle.sh test.csv dbpedia.test
```
```
