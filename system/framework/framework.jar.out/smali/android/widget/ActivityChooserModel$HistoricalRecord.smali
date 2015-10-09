.class public final Landroid/widget/ActivityChooserModel$HistoricalRecord;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalRecord"
.end annotation


# instance fields
.field public final activity:Landroid/content/ComponentName;

.field public final time:J

.field public final weight:F


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;JF)V
    .locals 0
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .param p2, "time"    # J
    .param p4, "weight"    # F

    .prologue
    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 819
    iput-wide p2, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    .line 820
    iput p4, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    .line 821
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JF)V
    .locals 1
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "weight"    # F

    .prologue
    .line 807
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 808
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 835
    if-ne p0, p1, :cond_1

    .line 858
    :cond_0
    :goto_0
    return v1

    .line 838
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 839
    goto :goto_0

    .line 841
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 842
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 844
    check-cast v0, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 845
    .local v0, "other":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v3, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    if-nez v3, :cond_4

    .line 846
    iget-object v3, v0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    move v1, v2

    .line 847
    goto :goto_0

    .line 849
    :cond_4
    iget-object v3, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 850
    goto :goto_0

    .line 852
    :cond_5
    iget-wide v3, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    iget-wide v5, v0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 853
    goto :goto_0

    .line 855
    :cond_6
    iget v3, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 856
    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 825
    const/16 v0, 0x1f

    .line 826
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 827
    .local v1, "result":I
    iget-object v2, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 828
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    iget-wide v5, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 829
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 830
    return v1

    .line 827
    :cond_0
    iget-object v2, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 864
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    const-string v1, "; activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 866
    const-string v1, "; time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 867
    const-string v1, "; weight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    iget v3, p0, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 868
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
