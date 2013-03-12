.class public final Lcom/google/android/mms/SecurityTelephony$Sms$Conversations;
.super Ljava/lang/Object;
.source "SecurityTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/mms/SecurityTelephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/SecurityTelephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Conversations"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final MESSAGE_COUNT:Ljava/lang/String; = "msg_count"

.field public static final SNIPPET:Ljava/lang/String; = "snippet"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 551
    const-string v0, "content://security_sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/SecurityTelephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 546
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
