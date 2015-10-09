.class Landroid/emoji/EmojiFactory$CustomLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "EmojiFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emoji/EmojiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomLinkedHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/emoji/EmojiFactory;


# direct methods
.method public constructor <init>(Landroid/emoji/EmojiFactory;)V
    .locals 3

    .prologue
    .line 39
    .local p0, "this":Landroid/emoji/EmojiFactory$CustomLinkedHashMap;, "Landroid/emoji/EmojiFactory$CustomLinkedHashMap<TK;TV;>;"
    iput-object p1, p0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;->this$0:Landroid/emoji/EmojiFactory;

    .line 42
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 43
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Landroid/emoji/EmojiFactory$CustomLinkedHashMap;, "Landroid/emoji/EmojiFactory$CustomLinkedHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;->size()I

    move-result v0

    iget-object v1, p0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;->this$0:Landroid/emoji/EmojiFactory;

    # getter for: Landroid/emoji/EmojiFactory;->sCacheSize:I
    invoke-static {v1}, Landroid/emoji/EmojiFactory;->access$000(Landroid/emoji/EmojiFactory;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
