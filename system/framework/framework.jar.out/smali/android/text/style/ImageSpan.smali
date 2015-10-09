.class public Landroid/text/style/ImageSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "ImageSpan.java"


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mResourceId:I

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "verticalAlignment"    # I

    .prologue
    .line 122
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 123
    iput-object p1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    .line 124
    iput p2, p0, Landroid/text/style/ImageSpan;->mResourceId:I

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "verticalAlignment"    # I

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 62
    iput-object p1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    .line 63
    if-eqz p1, :cond_0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    iput-object v2, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v2, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 67
    .local v1, "width":I
    iget-object v2, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 68
    .local v0, "height":I
    iget-object v2, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-lez v1, :cond_1

    .end local v1    # "width":I
    :goto_1
    if-lez v0, :cond_2

    .end local v0    # "height":I
    :goto_2
    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    return-void

    .line 63
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .restart local v0    # "height":I
    .restart local v1    # "width":I
    :cond_1
    move v1, v3

    .line 68
    goto :goto_1

    .end local v1    # "width":I
    :cond_2
    move v0, v3

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "verticalAlignment"    # I

    .prologue
    .line 107
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 108
    iput-object p1, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    .line 110
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/ImageSpan;->mSource:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "verticalAlignment"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "verticalAlignment"    # I

    .prologue
    .line 80
    invoke-direct {p0, p2}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 81
    iput-object p1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "verticalAlignment"    # I

    .prologue
    .line 93
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 94
    iput-object p1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    iput-object p2, p0, Landroid/text/style/ImageSpan;->mSource:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 132
    iget-object v1, p0, Landroid/text/style/ImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    :goto_0
    return-object v1

    .line 133
    :cond_0
    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    if-eqz v5, :cond_1

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 138
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .line 145
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 143
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v5, "sms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to loaded content "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/text/style/ImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 148
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    iget-object v5, p0, Landroid/text/style/ImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Landroid/text/style/ImageSpan;->mResourceId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 149
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 151
    :catch_1
    move-exception v3

    .line 152
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "sms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/text/style/ImageSpan;->mResourceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/text/style/ImageSpan;->mSource:Ljava/lang/String;

    return-object v0
.end method
