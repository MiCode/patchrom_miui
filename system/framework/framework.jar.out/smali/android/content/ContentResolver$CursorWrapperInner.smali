.class final Landroid/content/ContentResolver$CursorWrapperInner;
.super Landroid/database/CrossProcessCursorWrapper;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorWrapperInner"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CursorWrapperInner"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mContentProvider:Landroid/content/IContentProvider;

.field private mProviderReleased:Z

.field final synthetic this$0:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Landroid/content/IContentProvider;)V
    .locals 2
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "icp"    # Landroid/content/IContentProvider;

    .prologue
    .line 2252
    iput-object p1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->this$0:Landroid/content/ContentResolver;

    .line 2253
    invoke-direct {p0, p2}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2249
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2254
    iput-object p3, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mContentProvider:Landroid/content/IContentProvider;

    .line 2255
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 2256
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 2260
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->close()V

    .line 2261
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->this$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2262
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mProviderReleased:Z

    .line 2264
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 2265
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 2267
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2272
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 2273
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 2276
    :cond_0
    iget-boolean v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mProviderReleased:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mContentProvider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_1

    .line 2279
    const-string v0, "CursorWrapperInner"

    const-string v1, "Cursor finalized without prior close()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->this$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2283
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2285
    return-void

    .line 2283
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
