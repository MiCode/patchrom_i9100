.class Lcom/android/server/enterprise/EmailAccountPolicy$IntentFieldName;
.super Ljava/lang/Object;
.source "EmailAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EmailAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntentFieldName"
.end annotation


# static fields
.field private static final account_name:Ljava/lang/String; = "account_name"

.field private static final is_default:Ljava/lang/String; = "is_default"

.field private static final notify:Ljava/lang/String; = "notify"

.field private static final outgoing_sender_name:Ljava/lang/String; = "outgoing_sender_name"

.field private static final outgoing_service:Ljava/lang/String; = "outgoing_service"

.field private static final outgoing_user_passwd:Ljava/lang/String; = "outgoing_user_passwd"

.field private static final receive_host:Ljava/lang/String; = "receive_host"

.field private static final receive_port:Ljava/lang/String; = "receive_port"

.field private static final receive_security:Ljava/lang/String; = "receive_security"

.field private static final send_host:Ljava/lang/String; = "send_host"

.field private static final send_port:Ljava/lang/String; = "send_port"

.field private static final send_security:Ljava/lang/String; = "send_security"

.field private static final sender_name:Ljava/lang/String; = "sender_name"

.field private static final service:Ljava/lang/String; = "service"

.field private static final signature:Ljava/lang/String; = "signature"

.field private static final user_id:Ljava/lang/String; = "user_id"

.field private static final user_passwd:Ljava/lang/String; = "user_passwd"

.field private static final vibrate:Ljava/lang/String; = "vibrate"

.field private static final vibrate_when_silent:Ljava/lang/String; = "vibrate_when_silent"


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EmailAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EmailAccountPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/enterprise/EmailAccountPolicy$IntentFieldName;->this$0:Lcom/android/server/enterprise/EmailAccountPolicy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
