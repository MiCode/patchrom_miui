.class public Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;
.super Landroid/app/DialogFragment;
.source "BandwidthUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/hotspot/BandwidthUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LimitEditorFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;


# direct methods
.method public constructor <init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 389
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    .line 392
    .local v6, target:Lcom/mediatek/wifi/hotspot/BandwidthUsage;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 395
    .local v3, dialogInflater:Landroid/view/LayoutInflater;
    const v8, 0x7f04002d

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 396
    .local v7, view:Landroid/view/View;
    const v8, 0x7f090056

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    .line 397
    .local v1, bytesPicker:Landroid/widget/NumberPicker;
    iget-object v8, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    #getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;
    invoke-static {v8}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$400(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/widget/ChartBandwidthUsageView;->getLimitBytes()J

    move-result-wide v4

    .line 398
    .local v4, limitBytes:J
    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 399
    invoke-virtual {v1, v10}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 401
    const-wide/32 v8, 0x100000

    div-long v8, v4, v8

    long-to-int v8, v8

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 402
    invoke-virtual {v1, v10}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 404
    const v8, 0x7f0c065f

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 405
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 406
    const v8, 0x7f0c065d

    new-instance v9, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;

    invoke-direct {v9, p0, v1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;Landroid/widget/NumberPicker;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method
