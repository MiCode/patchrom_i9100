.class public final Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StructuredPostal"
.end annotation


# static fields
.field public static final CITY:Ljava/lang/String; = "data7"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/postal-address_v2"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/postal-address_v2"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final COUNTRY:Ljava/lang/String; = "data10"

.field public static final FORMATTED_ADDRESS:Ljava/lang/String; = "data1"

.field public static final NEIGHBORHOOD:Ljava/lang/String; = "data6"

.field public static final POBOX:Ljava/lang/String; = "data5"

.field public static final POSTCODE:Ljava/lang/String; = "data9"

.field public static final REGION:Ljava/lang/String; = "data8"

.field public static final STREET:Ljava/lang/String; = "data4"

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5792
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "postals"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5776
    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 5884
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5888
    .end local p2
    :goto_0
    return-object p2

    .line 5887
    .restart local p2
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v0

    .line 5888
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 5869
    packed-switch p0, :pswitch_data_0

    .line 5873
    const v0, 0x10403a7

    :goto_0
    return v0

    .line 5870
    :pswitch_0
    const v0, 0x10403a8

    goto :goto_0

    .line 5871
    :pswitch_1
    const v0, 0x10403a9

    goto :goto_0

    .line 5872
    :pswitch_2
    const v0, 0x10403aa

    goto :goto_0

    .line 5869
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
