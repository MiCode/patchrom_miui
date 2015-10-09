.class Landroid/widget/DoubleDigitManager;
.super Ljava/lang/Object;
.source "DoubleDigitManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DoubleDigitManager$CallBack;
    }
.end annotation


# instance fields
.field private intermediateDigit:Ljava/lang/Integer;

.field private final mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

.field private final timeoutInMillis:J


# direct methods
.method public constructor <init>(JLandroid/widget/DoubleDigitManager$CallBack;)V
    .locals 0
    .param p1, "timeoutInMillis"    # J
    .param p3, "callBack"    # Landroid/widget/DoubleDigitManager$CallBack;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Landroid/widget/DoubleDigitManager;->timeoutInMillis:J

    .line 41
    iput-object p3, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    .line 42
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DoubleDigitManager;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DoubleDigitManager;

    .prologue
    .line 27
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/DoubleDigitManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Landroid/widget/DoubleDigitManager;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 27
    iput-object p1, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Landroid/widget/DoubleDigitManager;)Landroid/widget/DoubleDigitManager$CallBack;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DoubleDigitManager;

    .prologue
    .line 27
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    return-object v0
.end method


# virtual methods
.method public reportDigit(I)V
    .locals 5
    .param p1, "digit"    # I

    .prologue
    const/4 v4, 0x0

    .line 49
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/widget/DoubleDigitManager$1;

    invoke-direct {v1, p0}, Landroid/widget/DoubleDigitManager$1;-><init>(Landroid/widget/DoubleDigitManager;)V

    iget-wide v2, p0, Landroid/widget/DoubleDigitManager;->timeoutInMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    invoke-interface {v0, p1}, Landroid/widget/DoubleDigitManager$CallBack;->singleDigitIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iput-object v4, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    .line 67
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    invoke-interface {v0, p1}, Landroid/widget/DoubleDigitManager$CallBack;->singleDigitFinal(I)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    iget-object v1, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/widget/DoubleDigitManager$CallBack;->twoDigitsFinal(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iput-object v4, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    goto :goto_0
.end method
