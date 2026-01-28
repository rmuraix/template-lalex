# LaTeX Template (template-lalex)

devcontainerを使用する日本語の論文・レポート向けLaTeXテンプレート.

## File Structure

```
src/
├── main.tex              # メインテンプレート（空のテンプレート）
├── main_sample.tex       # サンプル付きテンプレート（使用例）
├── references/
│   └── refs.bib          # 参考文献データベース（BibLaTeX形式）
├── style/                # カスタムスタイルファイル
└── .latexmkrc            # latexmk設定ファイル
```

### Sample Files

- **main_sample.tex**: フォーマットのサンプル
- **refs.bib**: 参考文献のサンプルエントリが含まれている　`\cite{キー名}` で本文中から引用可能

## Build

ビルドは `src` ディレクトリ内で行います。まず `src` に移動してください。

```bash
cd src
```

ビルド例:

- 空のテンプレートをビルド

```bash
latexmk main.tex
```

- サンプル付きテンプレートをビルド

```bash
latexmk main_sample.tex
```

クリーン（中間ファイルの削除）:

```bash
latexmk -C
```

クリーン後に再ビルドする例:

```bash
latexmk -C && latexmk main_sample.tex
```
## Contributing

Your contribution is always welcome. Please read [Contributing Guide](https://github.com/rmuraix/.github/blob/main/.github/CONTRIBUTING.md).
