import React, { useEffect, useState } from 'react';
import { useTable, usePagination, useGlobalFilter, useSortBy } from 'react-table';
import 'bootstrap/dist/css/bootstrap.min.css';
import './TableLayout.css';

// Global Search Filter Component
function GlobalFilter({ globalFilter, setGlobalFilter }) {
    return (
        <div className="dataTable_search mb-3">
            <input
                value={globalFilter || ''}
                onChange={(e) => setGlobalFilter(e.target.value)}
                className="form-control"
                placeholder="Search..."
                style={{ maxWidth: '200px' }}
            />
        </div>
    );
}

// Reusable DataTable Component
export default function DataTable({ columns, data, initialSearchValue, expandedRows, toggleRowExpansion }) {
    const {
        getTableProps,
        getTableBodyProps,
        headerGroups,
        page,
        prepareRow,
        canPreviousPage,
        canNextPage,
        pageOptions,
        nextPage,
        previousPage,
        setPageSize,
        setGlobalFilter,
        state: { pageIndex, pageSize, globalFilter },
    } = useTable(
        {
            columns,
            data,
            initialState: { pageIndex: 0, globalFilter: initialSearchValue },
        },
        useGlobalFilter,
        useSortBy,
        usePagination
    );

    useEffect(() => {
        if (initialSearchValue) {
            setGlobalFilter(initialSearchValue);
        }
    }, [initialSearchValue, setGlobalFilter]);

    return (
        <div className="dataTable_wrapper container-fluid">
            <GlobalFilter globalFilter={globalFilter} setGlobalFilter={setGlobalFilter} />

            <div className="table-responsive">
                <table {...getTableProps()} className="table table-striped">
                    <thead>
                        {headerGroups.map((headerGroup) => (
                            <tr {...headerGroup.getHeaderGroupProps()} className="dataTable_headerRow">
                                <th className="dataTable_headerCell">Expand</th>
                                {headerGroup.headers.map((column) => (
                                    <th {...column.getHeaderProps(column.getSortByToggleProps())} className="dataTable_headerCell">
                                        {column.render('Header')}
                                        <span>{column.isSorted ? (column.isSortedDesc ? ' 🔽' : ' 🔼') : ''}</span>
                                    </th>
                                ))}
                            </tr>
                        ))}
                    </thead>
                    <tbody {...getTableBodyProps()} className="dataTable_body">
                        {page.map((row) => {
                            prepareRow(row);
                            return (
                                <React.Fragment key={row.original.invoice}>
                                    <tr {...row.getRowProps()} className="dataTable_row">
                                        <td className="dataTable_cell">
                                            <input
                                                type="checkbox"
                                                checked={!!expandedRows[row.original.invoice]}
                                                onChange={() => toggleRowExpansion(row.original.invoice, row.index, row.original.invoice)}
                                            />
                                        </td>
                                        {row.cells.map((cell) => (
                                            <td {...cell.getCellProps()} className="dataTable_cell">
                                                {cell.render('Cell')}
                                            </td>
                                        ))}
                                    </tr>
                                    {expandedRows[row.original.invoice] && row.original.expandedContent && (
                                        <tr className="expanded-row">
                                            <td colSpan={columns.length + 1} className="text-muted p-3">
                                                {row.original.expandedContent}
                                            </td>
                                        </tr>
                                    )}
                                </React.Fragment>
                            );
                        })}
                    </tbody>
                </table>
            </div>

            <div className="d-flex align-items-center justify-content-between mt-3">
                <div className="dataTable_pageInfo">
                    Page{' '}
                    <strong>
                        {pageIndex + 1} of {pageOptions.length}
                    </strong>
                </div>
                <div className="pagebuttons">
                    <button className="btn btn-primary me-2 btn1" onClick={() => previousPage()} disabled={!canPreviousPage}>
                        Prev
                    </button>
                    <button className="btn btn-primary btn1" onClick={() => nextPage()} disabled={!canNextPage}>
                        Next
                    </button>
                </div>
                <div>
                    <select
                        className="form-select form-select-sm"
                        value={pageSize}
                        onChange={(e) => setPageSize(Number(e.target.value))}
                    >
                        {[5, 10, 20].map((size) => (
                            <option key={size} value={size}>
                                Show {size}
                            </option>
                        ))}
                    </select>
                </div>
            </div>
        </div>
    );
}
