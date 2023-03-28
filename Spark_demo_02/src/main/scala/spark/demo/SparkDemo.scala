package spark.demo
import org.apache.log4j.{Level,Logger}
import org.apache.spark.sql.{DataFrame, SparkSession}
import org.apache.spark.sql.functions.{col,desc,sum}


object SparkDemo {

  def main(args: Array[String]): Unit = {
    val saludo = "Hello, Spark"
    println(saludo)

    val spark: SparkSession = SparkSession.builder
      .master("local[*]")
      .appName("SparkDemo")
      .getOrCreate()
    spark.sparkContext.setLogLevel("WARN")

    val sparkVersion = spark.version
    val scalaVersion = util.Properties.versionNumberString
    val javaVersion = System.getProperty("java.version")

    println("SPARK VERSION = " + sparkVersion)
    println("SCALA VERSION = " + scalaVersion)
    println("JAVA  VERSION = " + javaVersion)

    val df_pokemon = spark.read.format(source = "csv")
      .option("header", value=true)
      .option("inferSchema", value = true)
      .load (path = "pokemon.csv")

    df_pokemon.show(numRows=5, truncate=false)

    val df_pokemon_legendary = df_pokemon.filter(df_pokemon("is_legendary") === true)
    df_pokemon_legendary.show()


    df_pokemon_legendary.write.format("csv")
      .mode("overwrite")
      .option("header", "true")
      .save("/files")

    spark.close()


  }

}
