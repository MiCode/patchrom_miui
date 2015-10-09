.class public final Landroid/provider/Contacts$Presence;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$PeopleColumns;
.implements Landroid/provider/Contacts$PresenceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Presence"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PERSON_ID:Ljava/lang/String; = "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1623
    const-string v0, "content://contacts/presence"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Presence;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPresenceIconResourceId(I)I
    .locals 1
    .param p0, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1643
    packed-switch p0, :pswitch_data_0

    .line 1659
    sget v0, Lcom/android/internal/R$drawable;->presence_offline:I

    :goto_0
    return v0

    .line 1645
    :pswitch_0
    sget v0, Lcom/android/internal/R$drawable;->presence_online:I

    goto :goto_0

    .line 1649
    :pswitch_1
    sget v0, Lcom/android/internal/R$drawable;->presence_away:I

    goto :goto_0

    .line 1652
    :pswitch_2
    sget v0, Lcom/android/internal/R$drawable;->presence_busy:I

    goto :goto_0

    .line 1655
    :pswitch_3
    sget v0, Lcom/android/internal/R$drawable;->presence_invisible:I

    goto :goto_0

    .line 1643
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static final setPresenceIcon(Landroid/widget/ImageView;I)V
    .locals 1
    .param p0, "icon"    # Landroid/widget/ImageView;
    .param p1, "serverStatus"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1672
    invoke-static {p1}, Landroid/provider/Contacts$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1673
    return-void
.end method
