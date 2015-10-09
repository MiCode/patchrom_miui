.class public Landroid/app/NativeActivity;
.super Landroid/app/Activity;
.source "NativeActivity.java"

# interfaces
.implements Landroid/view/InputQueue$Callback;
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NativeActivity$NativeContentView;
    }
.end annotation


# static fields
.field private static final KEY_NATIVE_SAVED_STATE:Ljava/lang/String; = "android:native_state"

.field public static final META_DATA_FUNC_NAME:Ljava/lang/String; = "android.app.func_name"

.field public static final META_DATA_LIB_NAME:Ljava/lang/String; = "android.app.lib_name"


# instance fields
.field private mCurInputQueue:Landroid/view/InputQueue;

.field private mCurSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mDestroyed:Z

.field private mDispatchingUnhandledKey:Z

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mLastContentHeight:I

.field mLastContentWidth:I

.field mLastContentX:I

.field mLastContentY:I

.field final mLocation:[I

.field private mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

.field private mNativeHandle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    .line 116
    return-void
.end method

.method private static getAbsolutePath(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 189
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[B)I
.end method

.method private native onConfigurationChangedNative(I)V
.end method

.method private native onContentRectChangedNative(IIIII)V
.end method

.method private native onInputQueueCreatedNative(II)V
.end method

.method private native onInputQueueDestroyedNative(II)V
.end method

.method private native onLowMemoryNative(I)V
.end method

.method private native onPauseNative(I)V
.end method

.method private native onResumeNative(I)V
.end method

.method private native onSaveInstanceStateNative(I)[B
.end method

.method private native onStartNative(I)V
.end method

.method private native onStopNative(I)V
.end method

.method private native onSurfaceChangedNative(ILandroid/view/Surface;III)V
.end method

.method private native onSurfaceCreatedNative(ILandroid/view/Surface;)V
.end method

.method private native onSurfaceDestroyedNative(I)V
.end method

.method private native onSurfaceRedrawNeededNative(ILandroid/view/Surface;)V
.end method

.method private native onWindowFocusChangedNative(IZ)V
.end method

.method private native unloadNativeCode(I)V
.end method


# virtual methods
.method hideIme(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 336
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 337
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 244
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onConfigurationChangedNative(I)V

    .line 246
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    const-string/jumbo v13, "main"

    .line 131
    .local v13, "libname":Ljava/lang/String;
    const-string v3, "ANativeActivity_onCreate"

    .line 134
    .local v3, "funcname":Ljava/lang/String;
    const-string v1, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/Window;->takeInputQueue(Landroid/view/InputQueue$Callback;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/Window;->setFormat(I)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 143
    new-instance v1, Landroid/app/NativeActivity$NativeContentView;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/app/NativeActivity$NativeContentView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    move-object/from16 v0, p0

    iput-object v0, v1, Landroid/app/NativeActivity$NativeContentView;->mActivity:Landroid/app/NativeActivity;

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->setContentView(Landroid/view/View;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->requestFocus()Z

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 150
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    .line 152
    .local v11, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.app.lib_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 154
    .local v15, "ln":Ljava/lang/String;
    if-eqz v15, :cond_0

    move-object v13, v15

    .line 155
    :cond_0
    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.app.func_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 156
    if-eqz v15, :cond_1

    move-object v3, v15

    .line 162
    .end local v15    # "ln":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 164
    .local v2, "path":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v14, "libraryFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 170
    :cond_2
    if-nez v2, :cond_3

    .line 171
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find native library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    .end local v2    # "path":Ljava/lang/String;
    .end local v11    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v14    # "libraryFile":Ljava/io/File;
    :catch_0
    move-exception v12

    .line 159
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Error getting activity info"

    invoke-direct {v1, v4, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 174
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v11    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v14    # "libraryFile":Ljava/io/File;
    :cond_3
    if-eqz p1, :cond_4

    const-string v1, "android:native_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 177
    .local v10, "nativeSavedState":[B
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getObbDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Landroid/app/NativeActivity;->loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[B)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/app/NativeActivity;->mNativeHandle:I

    .line 182
    move-object/from16 v0, p0

    iget v1, v0, Landroid/app/NativeActivity;->mNativeHandle:I

    if-nez v1, :cond_5

    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load native library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    .end local v10    # "nativeSavedState":[B
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 185
    .restart local v10    # "nativeSavedState":[B
    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 195
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 196
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(I)V

    .line 197
    iput-object v2, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 199
    :cond_0
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_1

    .line 200
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    iget-object v1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v1}, Landroid/view/InputQueue;->getNativePtr()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onInputQueueDestroyedNative(II)V

    .line 201
    iput-object v2, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 203
    :cond_1
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->unloadNativeCode(I)V

    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 205
    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity$NativeContentView;->getLocationInWindow([I)V

    .line 308
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0}, Landroid/app/NativeActivity$NativeContentView;->getWidth()I

    move-result v7

    .line 309
    .local v7, "w":I
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0}, Landroid/app/NativeActivity$NativeContentView;->getHeight()I

    move-result v6

    .line 310
    .local v6, "h":I
    iget-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v0, v0, v2

    iget v1, p0, Landroid/app/NativeActivity;->mLastContentX:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v0, v0, v3

    iget v1, p0, Landroid/app/NativeActivity;->mLastContentY:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    if-ne v7, v0, :cond_0

    iget v0, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    if-eq v6, v0, :cond_1

    .line 312
    :cond_0
    iget-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/app/NativeActivity;->mLastContentX:I

    .line 313
    iget-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v0, v0, v3

    iput v0, p0, Landroid/app/NativeActivity;->mLastContentY:I

    .line 314
    iput v7, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    .line 315
    iput v6, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    .line 316
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 317
    iget v1, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    iget v2, p0, Landroid/app/NativeActivity;->mLastContentX:I

    iget v3, p0, Landroid/app/NativeActivity;->mLastContentY:I

    iget v4, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    iget v5, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/NativeActivity;->onContentRectChangedNative(IIIII)V

    .line 321
    :cond_1
    return-void
.end method

.method public onInputQueueCreated(Landroid/view/InputQueue;)V
    .locals 2
    .param p1, "queue"    # Landroid/view/InputQueue;

    .prologue
    .line 293
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 294
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 295
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onInputQueueCreatedNative(II)V

    .line 297
    :cond_0
    return-void
.end method

.method public onInputQueueDestroyed(Landroid/view/InputQueue;)V
    .locals 2
    .param p1, "queue"    # Landroid/view/InputQueue;

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 301
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onInputQueueDestroyedNative(II)V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 304
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 251
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 252
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onLowMemoryNative(I)V

    .line 254
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 210
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onPauseNative(I)V

    .line 211
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 216
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onResumeNative(I)V

    .line 217
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 222
    iget v1, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v1}, Landroid/app/NativeActivity;->onSaveInstanceStateNative(I)[B

    move-result-object v0

    .line 223
    .local v0, "state":[B
    if-eqz v0, :cond_0

    .line 224
    const-string v1, "android:native_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 226
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 231
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onStartNative(I)V

    .line 232
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 237
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onStopNative(I)V

    .line 238
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 259
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 260
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Landroid/app/NativeActivity;->onWindowFocusChangedNative(IZ)V

    .line 262
    :cond_0
    return-void
.end method

.method setWindowFlags(II)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFlags(II)V

    .line 325
    return-void
.end method

.method setWindowFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    .line 329
    return-void
.end method

.method showIme(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 332
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 333
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 272
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 273
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 274
    iget v1, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/NativeActivity;->onSurfaceChangedNative(ILandroid/view/Surface;III)V

    .line 276
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 265
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 266
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 267
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceCreatedNative(ILandroid/view/Surface;)V

    .line 269
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 287
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 288
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(I)V

    .line 290
    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 279
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 280
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 281
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceRedrawNeededNative(ILandroid/view/Surface;)V

    .line 283
    :cond_0
    return-void
.end method
