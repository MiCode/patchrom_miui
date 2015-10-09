.class public final Landroid/gesture/GestureLibraries;
.super Ljava/lang/Object;
.source "GestureLibraries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gesture/GestureLibraries$ResourceGestureLibrary;,
        Landroid/gesture/GestureLibraries$FileGestureLibrary;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 40
    new-instance v0, Landroid/gesture/GestureLibraries$FileGestureLibrary;

    invoke-direct {v0, p0}, Landroid/gesture/GestureLibraries$FileGestureLibrary;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static fromFile(Ljava/lang/String;)Landroid/gesture/GestureLibrary;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    move-result-object v0

    return-object v0
.end method

.method public static fromPrivateFile(Landroid/content/Context;Ljava/lang/String;)Landroid/gesture/GestureLibrary;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    move-result-object v0

    return-object v0
.end method

.method public static fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 48
    new-instance v0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;

    invoke-direct {v0, p0, p1}, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
