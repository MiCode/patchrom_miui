.class public Landroid/content/pm/PackageItemInfo$DisplayNameComparator;
.super Ljava/lang/Object;
.source "PackageItemInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/PackageItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mPM:Landroid/content/pm/PackageManager;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;->sCollator:Ljava/text/Collator;

    .line 280
    iput-object p1, p0, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    .line 281
    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)I
    .locals 5
    .param p1, "aa"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "ab"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    .line 284
    iget-object v2, p0, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 285
    .local v0, "sa":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 286
    :cond_0
    iget-object v2, p0, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 287
    .local v1, "sb":Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    iget-object v1, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 288
    :cond_1
    iget-object v2, p0, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 277
    check-cast p1, Landroid/content/pm/PackageItemInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/PackageItemInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;->compare(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)I

    move-result v0

    return v0
.end method
