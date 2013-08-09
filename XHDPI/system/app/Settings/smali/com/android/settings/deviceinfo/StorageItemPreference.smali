.class public Lcom/android/settings/deviceinfo/StorageItemPreference;
.super Landroid/preference/Preference;
.source "StorageItemPreference.java"


# instance fields
.field public final color:I

.field public final userHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "titleRes"
    .parameter "colorRes"

    .prologue
    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "colorRes"
    .parameter "userHandle"

    .prologue
    .line 41
    const/4 v2, 0x0

    const v3, 0x60d0010

    invoke-direct {p0, p1, v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    if-eqz p3, :cond_0

    .line 46
    iput p3, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v2, 0x7f0e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 50
    .local v1, width:I
    const v2, 0x7f0e0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #width:I
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    const v2, 0x7f0c0305

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 60
    iput p4, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    .line 61
    return-void

    .line 54
    :cond_0
    const v2, -0xff01

    iput v2, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    goto :goto_0
.end method
