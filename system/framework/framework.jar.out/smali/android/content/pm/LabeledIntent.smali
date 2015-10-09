.class public Landroid/content/pm/LabeledIntent;
.super Landroid/content/Intent;
.source "LabeledIntent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/LabeledIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIcon:I

.field private mLabelRes:I

.field private mNonLocalizedLabel:Ljava/lang/CharSequence;

.field private mSourcePackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Landroid/content/pm/LabeledIntent$1;

    invoke-direct {v0}, Landroid/content/pm/LabeledIntent$1;-><init>()V

    sput-object v0, Landroid/content/pm/LabeledIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 1
    .param p1, "origIntent"    # Landroid/content/Intent;
    .param p2, "sourcePackage"    # Ljava/lang/String;
    .param p3, "labelRes"    # I
    .param p4, "icon"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 46
    iput-object p2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 47
    iput p3, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 49
    iput p4, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "origIntent"    # Landroid/content/Intent;
    .param p2, "sourcePackage"    # Ljava/lang/String;
    .param p3, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 64
    iput-object p2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 66
    iput-object p3, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 67
    iput p4, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 68
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 172
    invoke-virtual {p0, p1}, Landroid/content/pm/LabeledIntent;->readFromParcel(Landroid/os/Parcel;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "sourcePackage"    # Ljava/lang/String;
    .param p2, "labelRes"    # I
    .param p3, "icon"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 80
    iput p2, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 82
    iput p3, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "sourcePackage"    # Ljava/lang/String;
    .param p2, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 95
    iput-object p1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 97
    iput-object p2, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 98
    iput p3, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 99
    return-void
.end method


# virtual methods
.method public getIconResource()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    return v0
.end method

.method public getLabelResource()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    return v0
.end method

.method public getNonLocalizedLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSourcePackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v1, 0x0

    .line 153
    iget v2, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 155
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 159
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v2, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 136
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :cond_1
    iget v2, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 140
    .local v0, "label":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_2
    move-object v0, v1

    .line 144
    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 179
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 181
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 167
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
