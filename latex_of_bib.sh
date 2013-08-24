#!/bin/bash

TARGET=${1%.bib}.tex

echo '
\documentclass{article}
\begin{document}
' > $TARGET

for ref in `sed -f ${BASH_SOURCE[0]%.sh}.sed $1 | sort`
do
    echo "$ref~\\cite{$ref}" >> $TARGET
    echo >> $TARGET
done

echo '
\bibliographystyle{jplain}
\bibliography{myref}
\end{document}' >> $TARGET
