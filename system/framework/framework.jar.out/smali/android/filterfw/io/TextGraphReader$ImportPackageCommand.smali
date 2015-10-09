.class Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;
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
    name = "ImportPackageCommand"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Landroid/filterfw/io/TextGraphReader;


# direct methods
.method public constructor <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;->mPackageName:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public execute(Landroid/filterfw/io/TextGraphReader;)V
    .locals 3
    .param p1, "reader"    # Landroid/filterfw/io/TextGraphReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    # getter for: Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->access$000(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterFactory;->addPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/filterfw/io/GraphIOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
