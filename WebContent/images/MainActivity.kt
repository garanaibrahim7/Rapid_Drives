package com.example.gridviewdemo

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.AdapterView
import android.widget.GridView

class MainActivity : AppCompatActivity() {
    lateinit var gridView: GridView
    var imageName=arrayOf("index1","index2","index3","index4","index5","index6","index7","index8","index9","index10","index11","index12","index13","index14","index15","index16","index17","index18","index19","index20","index21","index22")
    var mThumbIds = intArrayOf(
        R.drawable.image1,
        R.drawable.image2,
        R.drawable.image3,
        R.drawable.image4,
        R.drawable.image5,
        R.drawable.image6,
        R.drawable.image7,
        R.drawable.image8,
        R.drawable.image9,
        R.drawable.image10,
        R.drawable.image11,
        R.drawable.image12,
        R.drawable.image13,
        R.drawable.image14,
        R.drawable.image15,
        R.drawable.image16,
        R.drawable.image17,
        R.drawable.image18,
        R.drawable.image19,
        R.drawable.image20,
        R.drawable.image21,
        R.drawable.image22,
    )

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val gridv=findViewById<GridView>(R.id.gridView)
        val mainAdapter=MainAdapter(this,imageName,mThumbIds)
        gridv.adapter=mainAdapter
        //gridv.onItemClickListener= AdapterView.OnItemClickListener{}
    }
}