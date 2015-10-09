.class Landroid/widget/Filter$RequestArguments;
.super Ljava/lang/Object;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestArguments"
.end annotation


# instance fields
.field constraint:Ljava/lang/CharSequence;

.field listener:Landroid/widget/Filter$FilterListener;

.field results:Landroid/widget/Filter$FilterResults;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Filter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Filter$1;

    .prologue
    .line 294
    invoke-direct {p0}, Landroid/widget/Filter$RequestArguments;-><init>()V

    return-void
.end method
