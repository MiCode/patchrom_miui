.class public abstract Landroid/os/FileObserver;
.super Ljava/lang/Object;
.source "FileObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileObserver$ObserverThread;
    }
.end annotation


# static fields
.field public static final ACCESS:I = 0x1

.field public static final ALL_EVENTS:I = 0xfff

.field public static final ATTRIB:I = 0x4

.field public static final CLOSE_NOWRITE:I = 0x10

.field public static final CLOSE_WRITE:I = 0x8

.field public static final CREATE:I = 0x100

.field public static final DELETE:I = 0x200

.field public static final DELETE_SELF:I = 0x400

.field private static final LOG_TAG:Ljava/lang/String; = "FileObserver"

.field public static final MODIFY:I = 0x2

.field public static final MOVED_FROM:I = 0x40

.field public static final MOVED_TO:I = 0x80

.field public static final MOVE_SELF:I = 0x800

.field public static final OPEN:I = 0x20

.field private static s_observerThread:Landroid/os/FileObserver$ObserverThread;


# instance fields
.field private m_descriptor:Ljava/lang/Integer;

.field private m_mask:I

.field private m_path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Landroid/os/FileObserver$ObserverThread;

    invoke-direct {v0}, Landroid/os/FileObserver$ObserverThread;-><init>()V

    sput-object v0, Landroid/os/FileObserver;->s_observerThread:Landroid/os/FileObserver$ObserverThread;

    .line 142
    sget-object v0, Landroid/os/FileObserver;->s_observerThread:Landroid/os/FileObserver$ObserverThread;

    invoke-virtual {v0}, Landroid/os/FileObserver$ObserverThread;->start()V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 154
    const/16 v0, 0xfff

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mask"    # I

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Landroid/os/FileObserver;->m_path:Ljava/lang/String;

    .line 167
    iput p2, p0, Landroid/os/FileObserver;->m_mask:I

    .line 168
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    .line 169
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/os/FileObserver;->stopWatching()V

    .line 173
    return-void
.end method

.method public abstract onEvent(ILjava/lang/String;)V
.end method

.method public startWatching()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 182
    sget-object v0, Landroid/os/FileObserver;->s_observerThread:Landroid/os/FileObserver$ObserverThread;

    iget-object v1, p0, Landroid/os/FileObserver;->m_path:Ljava/lang/String;

    iget v2, p0, Landroid/os/FileObserver;->m_mask:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/os/FileObserver$ObserverThread;->startWatching(Ljava/lang/String;ILandroid/os/FileObserver;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    .line 184
    :cond_0
    return-void
.end method

.method public stopWatching()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    .line 193
    sget-object v0, Landroid/os/FileObserver;->s_observerThread:Landroid/os/FileObserver$ObserverThread;

    iget-object v1, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/FileObserver$ObserverThread;->stopWatching(I)V

    .line 194
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    .line 196
    :cond_0
    return-void
.end method
