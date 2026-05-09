.class public final Lk2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/mozilla/javascript/Script;

.field public final b:Lorg/mozilla/javascript/Scriptable;

.field public final c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk2/d;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Lk2/d;->f:I

    iput-object p1, p0, Lk2/d;->a:Lorg/mozilla/javascript/Script;

    iput-object p2, p0, Lk2/d;->b:Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p0, Lk2/d;->c:Ljava/lang/String;

    return-void
.end method
