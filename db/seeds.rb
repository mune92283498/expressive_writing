# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Emotion.create(emotion_seq: 1, emotion_name: '嬉しい', emotion_comment: '今日はスムーズに仕事をこなせた')
Emotion.create(emotion_seq: 2, emotion_name: 'モヤモヤ', emotion_comment: '今日はうまくプログラムを組めなかった')
Emotion.create(emotion_seq: 3, emotion_name: 'イライラ', emotion_comment: '今日はエラーばかり発生してイライラした')