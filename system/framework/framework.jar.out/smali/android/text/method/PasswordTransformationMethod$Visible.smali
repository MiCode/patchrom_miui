.class Landroid/text/method/PasswordTransformationMethod$Visible;
.super Landroid/os/Handler;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Landroid/text/style/UpdateLayout;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/PasswordTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Visible"
.end annotation


# instance fields
.field private mText:Landroid/text/Spannable;

.field private mTransformer:Landroid/text/method/PasswordTransformationMethod;


# direct methods
.method public constructor <init>(Landroid/text/Spannable;Landroid/text/method/PasswordTransformationMethod;)V
    .locals 4
    .param p1, "sp"    # Landroid/text/Spannable;
    .param p2, "ptm"    # Landroid/text/method/PasswordTransformationMethod;

    .prologue
    .line 240
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 241
    iput-object p1, p0, Landroid/text/method/PasswordTransformationMethod$Visible;->mText:Landroid/text/Spannable;

    .line 242
    iput-object p2, p0, Landroid/text/method/PasswordTransformationMethod$Visible;->mTransformer:Landroid/text/method/PasswordTransformationMethod;

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/text/method/PasswordTransformationMethod$Visible;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 244
    return-void
.end method

.method static synthetic access$000(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;
    .locals 1
    .param p0, "x0"    # Landroid/text/method/PasswordTransformationMethod$Visible;

    .prologue
    .line 236
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$Visible;->mTransformer:Landroid/text/method/PasswordTransformationMethod;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$Visible;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 248
    return-void
.end method
