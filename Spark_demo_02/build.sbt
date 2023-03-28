ThisBuild / version := "0.1.0-SNAPSHOT"
ThisBuild / scalaVersion := "2.13.10"

name := "SparkDemo"

libraryDependencies ++= {
  val sparkV = "3.3.0"
  val hadoopV = "3.3.0"

  Seq(
    "org.apache.spark" %% "spark-core" % sparkV,
    "org.apache.spark" %% "spark-sql" % sparkV,
    "org.apache.spark" %% "spark-streaming" % sparkV,
    "org.apache.hadoop" % "hadoop-common" % hadoopV,
    "org.apache.hadoop" % "hadoop-client" % hadoopV
  )
}
