//
//  ForecastHour.swift
//  PerseusMeteo
//
//  Created by Mikhail Zhigulin in 7532.
//
//  Copyright © 7532 Mikhail Zhigulin of Novosibirsk
//  Copyright © 7532 PerseusRealDeal
//
//  The year starts from the creation of the world in the Star temple
//  according to a Slavic calendar. September, the 1st of Slavic year.
//
//  See LICENSE for details. All rights reserved.
//

import Foundation

/* JSON forecast hour sample
{
   "clouds":{
      "all":100
   },
   "wind":{
      "speed":10.42,
      "deg":210,
      "gust":21.030000000000001
   },
   "dt":1708884000,
   "snow":{
      "3h":0.69999999999999996
   },
   "dt_txt":"2024-02-25 18:00:00",
   "main":{
      "humidity":96,
      "feels_like":-6.54,
      "temp_min":6.0599999999999996,
      "temp_max":6.0599999999999996,
      "temp":6.0599999999999996,
      "pressure":1040,
      "temp_kf":0,
      "sea_level":1040,
      "grnd_level":1021
   },
   "weather":[
      {
         "id":600,
         "main":"Snow",
         "icon":"13n",
         "description":"light snow"
      }
   ],
   "pop":0.48999999999999999,
   "sys":{
      "pod":"n"
   },
   "visibility":130
}
*/

public struct ForecastHour {

    private var source = [String: Any]()

    // MARK: - Contract

    public let label: String

    // MARK: - Init

    init(title: String) {
        self.label = title
    }

    init(source: [String: Any], title: String = "") {
        self.init(title: title)

        // Data source
        self.source = source
    }
}
