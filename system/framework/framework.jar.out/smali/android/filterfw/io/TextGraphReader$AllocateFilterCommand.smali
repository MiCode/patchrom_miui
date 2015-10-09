.class Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;
.super Ljava/lang/Object;
.source "TextGraphReader.java"

# interfaces
.implements Landroid/filterfw/io/TextGraphReader$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/io/TextGraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllocateFilterCommand"
.end annotation


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mFilterName:Ljava/lang/String;

.field final synthetic this$0:Landroid/filterfw/io/TextGraphReader;


# direct methods
.method public constructor <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "filterName"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mClassName:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mFilterName:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public execute(Landroid/filterfw/io/TextGraphReader;)V
    .locals 5
    .param p1, "reader"    # Landroid/filterfw/io/TextGraphReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "filter":Landroid/filterfw/core/Filter;
    :try_start_0
    # getter for: Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->access$000(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mClassName:Ljava/lang/String;

    iget-object v4, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mFilterName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/FilterFactory;->createFilterByClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/filterfw/core/Filter;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    # setter for: Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;
    invoke-static {p1, v1}, Landroid/filterfw/io/TextGraphReader;->access$102(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/Filter;)Landroid/filterfw/core/Filter;

    .line 102
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Landroid/filterfw/io/GraphIOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
