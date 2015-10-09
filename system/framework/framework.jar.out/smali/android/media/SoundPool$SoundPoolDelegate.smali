.class interface abstract Landroid/media/SoundPool$SoundPoolDelegate;
.super Ljava/lang/Object;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SoundPoolDelegate"
.end annotation


# virtual methods
.method public abstract autoPause()V
.end method

.method public abstract autoResume()V
.end method

.method public abstract load(Landroid/content/Context;II)I
.end method

.method public abstract load(Landroid/content/res/AssetFileDescriptor;I)I
.end method

.method public abstract load(Ljava/io/FileDescriptor;JJI)I
.end method

.method public abstract load(Ljava/lang/String;I)I
.end method

.method public abstract pause(I)V
.end method

.method public abstract play(IFFIIF)I
.end method

.method public abstract release()V
.end method

.method public abstract resume(I)V
.end method

.method public abstract setLoop(II)V
.end method

.method public abstract setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
.end method

.method public abstract setPriority(II)V
.end method

.method public abstract setRate(IF)V
.end method

.method public abstract setVolume(IF)V
.end method

.method public abstract setVolume(IFF)V
.end method

.method public abstract stop(I)V
.end method

.method public abstract unload(I)Z
.end method
