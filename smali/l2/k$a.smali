.class Ll2/k$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2/k$a;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    sget-object v0, Lk2/c;->d:Landroid/content/Context;

    iget-object v1, p0, Ll2/k$a;->msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sget v1, Ll2/k;->notifGravity:I

    sget v2, Ll2/k;->notifOffsetX:I

    sget v3, Ll2/k;->notifOffsetY:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
