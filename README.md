## JumpStart Lab Curriculum - Rails Blogger App Tutorial

This is my take on JumpStart Lab's great Rails tutorial for beginners.

Almost everything works the first time I tried it, except article creation.

##### Creating new article used to work after the Article controller and routes were implemented.

But somehow when I finished the whole tutorial, localhost:3000/articles/new started to raise `Routing Error` with the following error message:

```
No route matches {:action=>"show", :controller=>"articles", :id=>#<Article id: nil, title: nil, body: nil, created_at: nil, updated_at: nil, image_file_name: nil, image_content_type: nil, image_file_size: nil, image_updated_at: nil>}
```

Could someone help me figure out what did I do wrong?

Thanks.

