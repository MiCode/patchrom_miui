.class public final Landroid/content/Intent$FilterComparison;
.super Ljava/lang/Object;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilterComparison"
.end annotation


# instance fields
.field private final mHashCode:I

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6579
    iput-object p1, p0, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    .line 6580
    invoke-virtual {p1}, Landroid/content/Intent;->filterHashCode()I

    move-result v0

    iput v0, p0, Landroid/content/Intent$FilterComparison;->mHashCode:I

    .line 6581
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 6594
    instance-of v1, p1, Landroid/content/Intent$FilterComparison;

    if-eqz v1, :cond_0

    .line 6595
    check-cast p1, Landroid/content/Intent$FilterComparison;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p1, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    .line 6596
    .local v0, "other":Landroid/content/Intent;
    iget-object v1, p0, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    .line 6598
    .end local v0    # "other":Landroid/content/Intent;
    :goto_0
    return v1

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 6589
    iget-object v0, p0, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 6603
    iget v0, p0, Landroid/content/Intent$FilterComparison;->mHashCode:I

    return v0
.end method
