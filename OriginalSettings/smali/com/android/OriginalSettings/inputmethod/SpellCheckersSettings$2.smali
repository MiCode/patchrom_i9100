.class Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings$2;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;

.field final synthetic val$scp:Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings$2;->val$scp:Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings$2;->val$scp:Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;

    #calls: Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;->access$000(Lcom/android/OriginalSettings/inputmethod/SpellCheckersSettings;Lcom/android/OriginalSettings/inputmethod/SingleSpellCheckerPreference;)V

    .line 132
    return-void
.end method
