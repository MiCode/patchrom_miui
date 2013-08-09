.class public Lcom/android/settings/deviceinfo/MsdInstallActivity;
.super Landroid/app/Activity;
.source "MsdInstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MsdInstallActivity$HtmlLinkSpan;,
        Lcom/android/settings/deviceinfo/MsdInstallActivity$MsdInstallRetrySpan;
    }
.end annotation


# static fields
.field private static final INSTALL_DRIVER_PATH:Ljava/lang/String;

.field private static final INSTALL_ICON_ARR:[[I

.field private static final MSD_INSTALL_RETRY:[I


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mHeaderView:Landroid/view/View;

.field private mInstallIcon:[I

.field private mInstallStep:I

.field private mInstallSummaryArr:[Ljava/lang/String;

.field private mInstallSystemType:I

.field private mIsInstallAlready:Z

.field private mMsdInstallIcon:Landroid/widget/ImageView;

.field private mMsdInstallIcon_1:Landroid/widget/ImageView;

.field private mMsdInstallRetry:Landroid/widget/TextView;

.field private mMsdInstallStatus:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mMsdInstallStatusGrp:Landroid/widget/RadioGroup;

.field private mMsdInstallSucceed:Landroid/widget/CheckBox;

.field private mMsdInstallSummary:Landroid/widget/TextView;

.field private mMsdInstallSummary_1:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getMIUIDataDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cdrom_install.iso"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->INSTALL_DRIVER_PATH:Ljava/lang/String;

    .line 43
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->INSTALL_ICON_ARR:[[I

    .line 68
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->MSD_INSTALL_RETRY:[I

    return-void

    .line 43
    :array_0
    .array-data 0x4
        0x71t 0x1t 0x2t 0x7ft
        0x74t 0x1t 0x2t 0x7ft
        0x78t 0x1t 0x2t 0x7ft
        0x78t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6ft 0x1t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x70t 0x1t 0x2t 0x7ft
        0x72t 0x1t 0x2t 0x7ft
        0x77t 0x1t 0x2t 0x7ft
        0x77t 0x1t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 68
    :array_4
    .array-data 0x4
        0xd6t 0x8t 0xct 0x7ft
        0xd7t 0x8t 0xct 0x7ft
        0xd8t 0x8t 0xct 0x7ft
        0xd9t 0x8t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 165
    new-instance v0, Lcom/android/settings/deviceinfo/MsdInstallActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity$4;-><init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallStatus:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 251
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MsdInstallActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSucceed:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/MsdInstallActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/MsdInstallActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/MsdInstallActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/MsdInstallActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mIsInstallAlready:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/deviceinfo/MsdInstallActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mIsInstallAlready:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->showInstallUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->init()V

    return-void
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "install_system"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    .line 99
    iput v8, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    .line 100
    iput-boolean v8, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mIsInstallAlready:Z

    .line 101
    const v4, 0x7f09000f

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mTitleView:Landroid/widget/TextView;

    .line 102
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08006d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v4, 0x7f0900ee

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    .line 104
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0900f8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSummary:Landroid/widget/TextView;

    .line 105
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0900f9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallIcon:Landroid/widget/ImageView;

    .line 106
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0900f6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSummary_1:Landroid/widget/TextView;

    .line 107
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0900f7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallIcon_1:Landroid/widget/ImageView;

    .line 109
    const v4, 0x7f0900ef

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallStatusGrp:Landroid/widget/RadioGroup;

    .line 110
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallStatusGrp:Landroid/widget/RadioGroup;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallStatus:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 112
    const v4, 0x7f0900f2

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSucceed:Landroid/widget/CheckBox;

    .line 113
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSucceed:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/settings/deviceinfo/MsdInstallActivity$1;

    invoke-direct {v5, p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity$1;-><init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    const v4, 0x7f0900f4

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mCancelButton:Landroid/widget/Button;

    .line 121
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/deviceinfo/MsdInstallActivity$2;

    invoke-direct {v5, p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity$2;-><init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v4, 0x7f0900f5

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mNextButton:Landroid/widget/Button;

    .line 130
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;

    invoke-direct {v5, p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;-><init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v4, 0x7f0900f3

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallRetry:Landroid/widget/TextView;

    .line 138
    iget v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    if-ne v4, v10, :cond_1

    .line 139
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallRetry:Landroid/widget/TextView;

    sget-object v5, Lcom/android/settings/deviceinfo/MsdInstallActivity;->MSD_INSTALL_RETRY:[I

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 150
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 151
    .local v1, res:Landroid/content/res/Resources;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    .line 152
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    const v5, 0x7f08006e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget-object v5, v5, v6

    aput-object v5, v4, v8

    .line 154
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    const v5, 0x7f08006f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget-object v5, v5, v6

    aput-object v5, v4, v9

    .line 156
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    const/4 v5, 0x2

    const v6, 0x7f080070

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 158
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    const v5, 0x7f080071

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget-object v5, v5, v6

    aput-object v5, v4, v10

    .line 160
    sget-object v4, Lcom/android/settings/deviceinfo/MsdInstallActivity;->INSTALL_ICON_ARR:[[I

    iget v5, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallIcon:[I

    .line 162
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->showInstallUI()V

    .line 163
    return-void

    .line 141
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/android/settings/deviceinfo/MsdInstallActivity;->MSD_INSTALL_RETRY:[I

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 142
    .local v0, msdInstallRetry:Ljava/lang/CharSequence;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 143
    .local v3, ss:Landroid/text/SpannableStringBuilder;
    const v4, 0x7f0c08d3

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 144
    .local v2, spanLength:I
    new-instance v4, Lcom/android/settings/deviceinfo/MsdInstallActivity$MsdInstallRetrySpan;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity$MsdInstallRetrySpan;-><init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0x21

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 146
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallRetry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 147
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallRetry:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private showInstallUI()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 182
    new-instance v6, Ljava/io/File;

    sget-object v8, Lcom/android/settings/deviceinfo/MsdInstallActivity;->INSTALL_DRIVER_PATH:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    move v1, v4

    .line 183
    .local v1, driverNeedDownload:Z
    :goto_0
    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    packed-switch v6, :pswitch_data_0

    .line 206
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08006d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    if-eq v6, v10, :cond_1

    .line 208
    if-eqz v1, :cond_6

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-ne v6, v4, :cond_6

    .line 209
    new-instance v3, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    iget v8, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    aget-object v6, v6, v8

    invoke-direct {v3, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 210
    .local v3, ss:Landroid/text/SpannableStringBuilder;
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    iget v8, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    aget-object v6, v6, v8

    const-string v8, "http://miui.com/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 211
    .local v2, spanStart:I
    new-instance v6, Lcom/android/settings/deviceinfo/MsdInstallActivity$HtmlLinkSpan;

    invoke-direct {v6, p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity$HtmlLinkSpan;-><init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    iget v9, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v3, v6, v2, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 213
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSummary:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mTitleView:Landroid/widget/TextView;

    const v8, 0x7f0c08dc

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 218
    .end local v2           #spanStart:I
    .end local v3           #ss:Landroid/text/SpannableStringBuilder;
    :goto_2
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallIcon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallIcon:[I

    iget v9, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    aget v8, v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    :cond_1
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallRetry:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-le v6, v4, :cond_7

    move v6, v5

    :goto_3
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-eqz v6, :cond_8

    .line 223
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallStatusGrp:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 228
    :goto_4
    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-le v6, v4, :cond_9

    const v0, 0x7f0c08d4

    .line 229
    .local v0, buttonResId:I
    :goto_5
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(I)V

    .line 231
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mNextButton:Landroid/widget/Button;

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-le v6, v4, :cond_a

    move v6, v7

    :goto_6
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mNextButton:Landroid/widget/Button;

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-ne v6, v4, :cond_2

    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSucceed:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_2
    move v6, v4

    :goto_7
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 234
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSucceed:Landroid/widget/CheckBox;

    iget v8, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-ne v8, v4, :cond_c

    :goto_8
    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 235
    return-void

    .end local v0           #buttonResId:I
    .end local v1           #driverNeedDownload:Z
    :cond_3
    move v1, v5

    .line 182
    goto/16 :goto_0

    .line 185
    .restart local v1       #driverNeedDownload:Z
    :pswitch_0
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSummary_1:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-ne v6, v9, :cond_4

    move v6, v5

    :goto_9
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v8, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallIcon_1:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-ne v6, v9, :cond_5

    move v6, v5

    :goto_a
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    if-eqz v1, :cond_0

    .line 188
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    const v8, 0x7f0c08dd

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    .line 189
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallIcon:[I

    const v8, 0x7f020175

    aput v8, v6, v4

    goto/16 :goto_1

    :cond_4
    move v6, v7

    .line 185
    goto :goto_9

    :cond_5
    move v6, v7

    .line 186
    goto :goto_a

    .line 193
    :pswitch_1
    if-eqz v1, :cond_0

    .line 194
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    const v8, 0x7f0c08de

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    .line 195
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallIcon:[I

    const v8, 0x7f020173

    aput v8, v6, v4

    goto/16 :goto_1

    .line 200
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :pswitch_3
    iput v10, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    goto/16 :goto_1

    .line 216
    :cond_6
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSummary:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    iget v9, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    move v6, v7

    .line 220
    goto/16 :goto_3

    .line 225
    :cond_8
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallStatusGrp:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v5}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 228
    :cond_9
    const/high16 v0, 0x104

    goto/16 :goto_5

    .restart local v0       #buttonResId:I
    :cond_a
    move v6, v5

    .line 231
    goto/16 :goto_6

    :cond_b
    move v6, v5

    .line 232
    goto :goto_7

    :cond_c
    move v5, v7

    .line 234
    goto :goto_8

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f040063

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->setContentView(I)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->init()V

    .line 95
    return-void
.end method
