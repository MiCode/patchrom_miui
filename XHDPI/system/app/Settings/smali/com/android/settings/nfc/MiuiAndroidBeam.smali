.class public Lcom/android/settings/nfc/MiuiAndroidBeam;
.super Landroid/app/Fragment;
.source "MiuiAndroidBeam.java"


# instance fields
.field private mAndroidBeamSwitch:Lmiui/widget/SlidingButton;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/MiuiAndroidBeam;)Lmiui/widget/SlidingButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mAndroidBeamSwitch:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/MiuiAndroidBeam;)Landroid/nfc/NfcAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 51
    const v0, 0x7f09000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mAndroidBeamSwitch:Lmiui/widget/SlidingButton;

    .line 52
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mAndroidBeamSwitch:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mAndroidBeamSwitch:Lmiui/widget/SlidingButton;

    new-instance v1, Lcom/android/settings/nfc/MiuiAndroidBeam$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/MiuiAndroidBeam$1;-><init>(Lcom/android/settings/nfc/MiuiAndroidBeam;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangedListener(Lmiui/widget/SlidingButton$OnCheckedChangedListener;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/nfc/MiuiAndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 40
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 45
    const v1, 0x7f040007

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/settings/nfc/MiuiAndroidBeam;->initView(Landroid/view/View;)V

    .line 47
    return-object v0
.end method
