## JumpStart Lab Curriculum - Rails Blogger App Tutorial

This is my take on JumpStart Lab's great Rails tutorial for beginners.

Almost everything works the first time I tried it, except article creation.

##### Creating new article used to work after the Article controller and routes were implemented.

But somehow when I finished the whole tutorial, localhost:3000/articles/new started to raise `Routing Error` with the following error message:

```
No route matches {:action=>"show", :controller=>"articles", :id=>#<Article id: nil, title: nil, body: nil, created_at: nil, updated_at: nil, image_file_name: nil, image_content_type: nil, image_file_size: nil, image_updated_at: nil>}
```

I'm running on Windows 7 64 bit
```
Ruby -v
>> ruby 1.9.3p125 (2012-02-16) [i386-mingw32]

Rails -v
>> Rails 3.2.8

Gem -v
>> 1.8.24
```

Could someone please help me figure out what did I do wrong?

Thanks.
