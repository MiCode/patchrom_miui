.class public Landroid/os/NullVibrator;
.super Landroid/os/Vibrator;
.source "NullVibrator.java"


# static fields
.field private static final sInstance:Landroid/os/NullVibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/os/NullVibrator;

    invoke-direct {v0}, Landroid/os/NullVibrator;-><init>()V

    sput-object v0, Landroid/os/NullVibrator;->sInstance:Landroid/os/NullVibrator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Landroid/os/NullVibrator;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/os/NullVibrator;->sInstance:Landroid/os/NullVibrator;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public vibrate(ILjava/lang/String;J)V
    .locals 0
    .param p1, "owningUid"    # I
    .param p2, "owningPackage"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J

    .prologue
    .line 57
    invoke-virtual {p0, p3, p4}, Landroid/os/NullVibrator;->vibrate(J)V

    .line 58
    return-void
.end method

.method public vibrate(ILjava/lang/String;[JI)V
    .locals 0
    .param p1, "owningUid"    # I
    .param p2, "owningPackage"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p3, p4}, Landroid/os/NullVibrator;->vibrate([JI)V

    .line 66
    return-void
.end method

.method public vibrate(J)V
    .locals 0
    .param p1, "milliseconds"    # J

    .prologue
    .line 43
    return-void
.end method

.method public vibrate([JI)V
    .locals 1
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I

    .prologue
    .line 47
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 50
    :cond_0
    return-void
.end method
