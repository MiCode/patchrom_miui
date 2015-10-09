.class final Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
.super Landroid/os/AsyncTask;
.source "PrintFileDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintFileDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriteFileAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCancellationSignal:Landroid/os/CancellationSignal;

.field private final mDestination:Landroid/os/ParcelFileDescriptor;

.field private final mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

.field final synthetic this$0:Landroid/print/PrintFileDocumentAdapter;


# direct methods
.method public constructor <init>(Landroid/print/PrintFileDocumentAdapter;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 2
    .param p2, "destination"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .prologue
    .line 103
    iput-object p1, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 104
    iput-object p2, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mDestination:Landroid/os/ParcelFileDescriptor;

    .line 105
    iput-object p4, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 106
    iput-object p3, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 107
    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v1, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;

    invoke-direct {v1, p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;-><init>(Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;Landroid/print/PrintFileDocumentAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mDestination:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 119
    .local v4, "out":Ljava/io/OutputStream;
    const/16 v6, 0x2000

    new-array v0, v6, [B

    .line 121
    .local v0, "buffer":[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    # getter for: Landroid/print/PrintFileDocumentAdapter;->mFile:Ljava/io/File;
    invoke-static {v6}, Landroid/print/PrintFileDocumentAdapter;->access$000(Landroid/print/PrintFileDocumentAdapter;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v1    # "in":Ljava/io/InputStream;
    .local v2, "in":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->isCancelled()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-eqz v6, :cond_1

    .line 137
    :cond_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 138
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    .line 140
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    :goto_1
    const/4 v6, 0x0

    return-object v6

    .line 126
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 127
    .local v5, "readByteCount":I
    if-ltz v5, :cond_0

    .line 130
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 132
    .end local v5    # "readByteCount":I
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 133
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    .local v3, "ioe":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v6, "PrintedFileDocumentAdapter"

    const-string v7, "Error writing data!"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    iget-object v6, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    iget-object v7, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    # getter for: Landroid/print/PrintFileDocumentAdapter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/print/PrintFileDocumentAdapter;->access$100(Landroid/print/PrintFileDocumentAdapter;)Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/android/internal/R$string;->write_fail_reason_cannot_write:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 138
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 137
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 138
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    .line 137
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 132
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 150
    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    iget-object v1, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    # getter for: Landroid/print/PrintFileDocumentAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/print/PrintFileDocumentAdapter;->access$100(Landroid/print/PrintFileDocumentAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/internal/R$string;->write_fail_reason_cancelled:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/print/PageRange;

    const/4 v2, 0x0

    sget-object v3, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    .line 146
    return-void
.end method
