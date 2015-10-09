.class public final Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;
.super Ljava/lang/Object;
.source "ConsumerIrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ConsumerIrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CarrierFrequencyRange"
.end annotation


# instance fields
.field private final mMaxFrequency:I

.field private final mMinFrequency:I

.field final synthetic this$0:Landroid/hardware/ConsumerIrManager;


# direct methods
.method public constructor <init>(Landroid/hardware/ConsumerIrManager;II)V
    .locals 0
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 105
    iput-object p1, p0, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->this$0:Landroid/hardware/ConsumerIrManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p2, p0, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->mMinFrequency:I

    .line 107
    iput p3, p0, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->mMaxFrequency:I

    .line 108
    return-void
.end method


# virtual methods
.method public getMaxFrequency()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->mMaxFrequency:I

    return v0
.end method

.method public getMinFrequency()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Landroid/hardware/ConsumerIrManager$CarrierFrequencyRange;->mMinFrequency:I

    return v0
.end method
