.class Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;
.super Ljava/lang/Object;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteSpec"
.end annotation


# instance fields
.field callback:Landroid/print/IWriteResultCallback;

.field fd:Landroid/os/ParcelFileDescriptor;

.field pages:[Landroid/print/PageRange;

.field sequence:I

.field final synthetic this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method private constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
    .param p2, "x1"    # Landroid/print/PrintManager$1;

    .prologue
    .line 738
    invoke-direct {p0, p1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V

    return-void
.end method
