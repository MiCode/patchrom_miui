.class public Landroid/gesture/Prediction;
.super Ljava/lang/Object;
.source "Prediction.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public score:D


# direct methods
.method constructor <init>(Ljava/lang/String;D)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "predictionScore"    # D

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    .line 26
    iput-wide p2, p0, Landroid/gesture/Prediction;->score:D

    .line 27
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    return-object v0
.end method
