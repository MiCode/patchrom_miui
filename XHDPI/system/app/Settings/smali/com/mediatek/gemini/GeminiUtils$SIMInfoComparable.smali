.class public Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;
.super Ljava/lang/Object;
.source "GeminiUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIMInfoComparable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/provider/Telephony$SIMInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/provider/Telephony$SIMInfo;Landroid/provider/Telephony$SIMInfo;)I
    .locals 2
    .parameter "sim1"
    .parameter "sim2"

    .prologue
    .line 89
    iget v0, p1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget v1, p2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    check-cast p1, Landroid/provider/Telephony$SIMInfo;

    .end local p1
    check-cast p2, Landroid/provider/Telephony$SIMInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;->compare(Landroid/provider/Telephony$SIMInfo;Landroid/provider/Telephony$SIMInfo;)I

    move-result v0

    return v0
.end method
