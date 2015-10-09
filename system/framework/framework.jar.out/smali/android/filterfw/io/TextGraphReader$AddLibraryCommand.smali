.class Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;
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
    name = "AddLibraryCommand"
.end annotation


# instance fields
.field private mLibraryName:Ljava/lang/String;

.field final synthetic this$0:Landroid/filterfw/io/TextGraphReader;


# direct methods
.method public constructor <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V
    .locals 0
    .param p2, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;->mLibraryName:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public execute(Landroid/filterfw/io/TextGraphReader;)V
    .locals 1
    .param p1, "reader"    # Landroid/filterfw/io/TextGraphReader;

    .prologue
    .line 78
    # getter for: Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->access$000(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;->mLibraryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/filterfw/core/FilterFactory;->addFilterLibrary(Ljava/lang/String;)V

    .line 79
    return-void
.end method
