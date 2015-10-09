.class public Landroid/database/MatrixCursor$RowBuilder;
.super Ljava/lang/Object;
.source "MatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/MatrixCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RowBuilder"
.end annotation


# instance fields
.field private final endIndex:I

.field private index:I

.field private final row:I

.field final synthetic this$0:Landroid/database/MatrixCursor;


# direct methods
.method constructor <init>(Landroid/database/MatrixCursor;I)V
    .locals 2
    .param p2, "row"    # I

    .prologue
    .line 201
    iput-object p1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput p2, p0, Landroid/database/MatrixCursor$RowBuilder;->row:I

    .line 203
    # getter for: Landroid/database/MatrixCursor;->columnCount:I
    invoke-static {p1}, Landroid/database/MatrixCursor;->access$000(Landroid/database/MatrixCursor;)I

    move-result v0

    mul-int/2addr v0, p2

    iput v0, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    .line 204
    iget v0, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    # getter for: Landroid/database/MatrixCursor;->columnCount:I
    invoke-static {p1}, Landroid/database/MatrixCursor;->access$000(Landroid/database/MatrixCursor;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/database/MatrixCursor$RowBuilder;->endIndex:I

    .line 205
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    .locals 3
    .param p1, "columnValue"    # Ljava/lang/Object;

    .prologue
    .line 215
    iget v0, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    iget v1, p0, Landroid/database/MatrixCursor$RowBuilder;->endIndex:I

    if-ne v0, v1, :cond_0

    .line 216
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "No more columns left."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iget-object v0, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    # getter for: Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;
    invoke-static {v0}, Landroid/database/MatrixCursor;->access$100(Landroid/database/MatrixCursor;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    aput-object p1, v0, v1

    .line 221
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    # getter for: Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;
    invoke-static {v1}, Landroid/database/MatrixCursor;->access$200(Landroid/database/MatrixCursor;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 232
    iget-object v1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    # getter for: Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;
    invoke-static {v1}, Landroid/database/MatrixCursor;->access$200(Landroid/database/MatrixCursor;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    # getter for: Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;
    invoke-static {v1}, Landroid/database/MatrixCursor;->access$100(Landroid/database/MatrixCursor;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Landroid/database/MatrixCursor$RowBuilder;->row:I

    iget-object v3, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    # getter for: Landroid/database/MatrixCursor;->columnCount:I
    invoke-static {v3}, Landroid/database/MatrixCursor;->access$000(Landroid/database/MatrixCursor;)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    aput-object p2, v1, v2

    .line 231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_1
    return-object p0
.end method
