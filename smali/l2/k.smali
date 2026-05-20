.class public final Ll2/k;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"


# static fields
.field public static notifGravity:I

.field public static notifOffsetX:I

.field public static notifOffsetY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x51

    sput v0, Ll2/k;->notifGravity:I

    const/4 v0, 0x0

    sput v0, Ll2/k;->notifOffsetX:I

    const/16 v0, 0x64

    sput v0, Ll2/k;->notifOffsetY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    return-void
.end method

.method public static copyToClipboard(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "copyToClipboard"
    .end annotation

    sget-object v0, Lk2/c;->d:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "Horrible Script"

    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public static showToast(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "showToast"
    .end annotation

    new-instance v0, Ll2/k$a;

    invoke-direct {v0, p0}, Ll2/k$a;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Client"

    return-object v0
.end method
