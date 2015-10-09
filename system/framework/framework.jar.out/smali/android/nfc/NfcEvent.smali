.class public final Landroid/nfc/NfcEvent;
.super Ljava/lang/Object;
.source "NfcEvent.java"


# instance fields
.field public final nfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;)V
    .locals 0
    .param p1, "nfcAdapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/nfc/NfcEvent;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 43
    return-void
.end method
