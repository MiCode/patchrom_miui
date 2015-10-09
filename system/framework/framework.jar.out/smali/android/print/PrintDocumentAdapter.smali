.class public abstract Landroid/print/PrintDocumentAdapter;
.super Ljava/lang/Object;
.source "PrintDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintDocumentAdapter$LayoutResultCallback;,
        Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    }
.end annotation


# static fields
.field public static final EXTRA_PRINT_PREVIEW:Ljava/lang/String; = "EXTRA_PRINT_PREVIEW"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public abstract onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public abstract onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.end method
