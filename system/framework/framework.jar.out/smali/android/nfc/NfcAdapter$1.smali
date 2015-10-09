.class Landroid/nfc/NfcAdapter$1;
.super Ljava/lang/Object;
.source "NfcAdapter.java"

# interfaces
.implements Landroid/app/OnActivityPausedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/NfcAdapter;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;)V
    .locals 0

    .prologue
    .line 1171
    iput-object p1, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1174
    iget-object v0, p0, Landroid/nfc/NfcAdapter$1;->this$0:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatchInternal(Landroid/app/Activity;Z)V

    .line 1175
    return-void
.end method
